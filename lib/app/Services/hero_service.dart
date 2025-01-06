import 'dart:developer';

import 'package:dota2_app/app/Model/hero_model.dart';
import 'package:dota2_app/app/Model/network_model/api_result.dart';
import 'package:dota2_app/app/Model/network_model/network_exceptions.dart';
import 'package:dota2_app/app/Repositories/heros_repository.dart';
import 'package:dota2_app/app/Repositories/local_storage_repository.dart';

class HeroService {
  late final HerosRepository _herosRepository;

  HeroService() {
    _herosRepository = HerosRepository();
  }

  Future<ApiResult<List<HeroModel>>> getherosList() async {
    try {
      final List local =
          await LocalStorageRepository.getLocalStorage(key: 'dota-2-heros');

      if (local.isNotEmpty) {
        final heroList = local.map((e) => HeroModel.fromJson(e)).toList();
        return ApiResult.success(heroList);
      }

      ApiResult<List<HeroModel>> api = await _herosRepository.getAllHerosRepo();
      api.when(
        success: (data) async {
          List<Map> list = data
              .map(
                (e) => e.toJson(),
              )
              .toList();
          await LocalStorageRepository.saveLocalStorage(list,
              key: 'dota-2-heros');
        },
        failure: (error) {
          return ApiResult.failure(error);
        },
      );
      return api;
    } catch (e) {
      log(e.toString());
      return ApiResult.failure(
        NetworkExceptions.getDioException(e.toString()),
      );
    }
  }
}
