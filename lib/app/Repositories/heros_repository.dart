import 'dart:convert';
import 'dart:developer';

import 'package:dota2_app/api-client/api_client_enum.dart';
import 'package:dota2_app/app/Model/hero_model.dart';
import 'package:dota2_app/app/Model/network_model/api_result.dart';
import 'package:dota2_app/app/Model/network_model/network_exceptions.dart';
import 'package:dota2_app/app/Repositories/base_repository.dart';

class HerosRepository extends BaseRepository {
  Future<ApiResult<List<HeroModel>>> getAllHerosRepo() async {
    try {
      final response = await dioClient.get(ApiClientEnum.listAllHero.url);
      final Map<String, dynamic> json = jsonDecode(response);
      List data = json['data'];
      List<HeroModel> heroList = data
          .map(
            (e) => HeroModel.fromJson(e),
          )
          .toList();

      return ApiResult.success(heroList);
    } catch (e) {
      log(e.toString());
      return ApiResult.failure(NetworkExceptions.getDioException(e));
    }
  }
}
