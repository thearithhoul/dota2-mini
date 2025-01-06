import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero_assets_model.freezed.dart';
part 'hero_assets_model.g.dart';

@freezed
class HeroAssetsModel with _$HeroAssetsModel {
  const factory HeroAssetsModel({
    required String hero_idle_image_url,
    required String hero_idle_vod_url,
  }) = _HeroAssetsModel;

  factory HeroAssetsModel.fromJson(Map<String, dynamic> json) =>
      _$HeroAssetsModelFromJson(json);
}
