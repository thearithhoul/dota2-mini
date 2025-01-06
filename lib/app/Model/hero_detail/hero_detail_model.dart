import 'package:freezed_annotation/freezed_annotation.dart';
import 'attirbutes/attirbutes_model.dart';
import 'hero_assets/hero_assets_model.dart';
import 'roles/roles_model.dart';
import 'stats/stats_model.dart';

part 'hero_detail_model.freezed.dart';
part 'hero_detail_model.g.dart';

@freezed
class HeroDetailModel with _$HeroDetailModel {
  const factory HeroDetailModel({
    required AttirbutesModel attirbutes,
    required HeroAssetsModel hero_assets,
    required RolesModel roles,
    required StatsModel stats,
  }) = _HeroDetailModel;

  factory HeroDetailModel.fromJson(Map<String, dynamic> json) =>
      _$HeroDetailModelFromJson(json);
}
