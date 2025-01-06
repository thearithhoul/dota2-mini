import 'package:dota2_app/app/Model/hero_detail/hero_detail_model.dart';
import 'package:dota2_app/app/Model/network_model/api_result.dart';
import 'package:dota2_app/app/Repositories/heros_detail_repository.dart';

class HeroDetailService {
  late final HerosDetailRepository _detailRepository;

  HeroDetailService() {
    _detailRepository = HerosDetailRepository();
  }

  Future<ApiResult<HeroDetailModel>> getHeroDetail(String heroName) async {
    return await _detailRepository.getHeroDetail(heroName);
  }
}
