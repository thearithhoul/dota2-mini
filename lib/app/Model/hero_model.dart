import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero_model.freezed.dart';
part 'hero_model.g.dart';

@freezed
class HeroModel with _$HeroModel {
  const factory HeroModel({
    required int id,
    required String hero_name,
    required String hero_type,
    required String hero_quotes,
    required String description,
    required int complexity_lvl,
    required String attack_type,
    required String image_url,
  }) = _HeroModel;

  factory HeroModel.fromJson(Map<String, Object?> json) =>
      _$HeroModelFromJson(json);
}
