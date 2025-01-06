import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dota2_app/app/Model/network_model/api_result.dart';
import 'package:dota2_app/app/Model/network_model/network_exceptions.dart';

import '../Model/hero_detail/hero_detail_model.dart';

class HerosDetailRepository {
  late FirebaseFirestore firestore;
  HerosDetailRepository() {
    firestore = FirebaseFirestore.instance;
  }

  Future<ApiResult<HeroDetailModel>> getHeroDetail(String heroName) async {
    try {
      final result =
          await firestore.collection('dota2_hero_detail').doc(heroName).get();
      final data = result.data();

      if (data == null) {
        return const ApiResult.failure(
          NetworkExceptions.unknown(),
        );
      }

      HeroDetailModel heroDetailModel = HeroDetailModel.fromJson(data);
      return ApiResult.success(heroDetailModel);
    } catch (e) {
      return const ApiResult.failure(
        NetworkExceptions.badRequest(),
      );
    }
  }
}
