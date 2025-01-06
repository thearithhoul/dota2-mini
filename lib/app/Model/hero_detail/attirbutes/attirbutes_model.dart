import 'package:freezed_annotation/freezed_annotation.dart';

part 'attirbutes_model.freezed.dart';
part 'attirbutes_model.g.dart';

@freezed
class AttirbutesModel with _$AttirbutesModel {
  const factory AttirbutesModel({
    required double base_health,
    required double base_mana,
    required double bease_health_regen,
    required double bease_mana_regen,
    required double base_str,
    required double base_agi,
    required double base_int,
    required double str_per_lvl,
    required double agi_per_lvl,
    required double int_per_lvl,
  }) = _AttirbutesModel;

  factory AttirbutesModel.fromJson(Map<String, dynamic> json) =>
      _$AttirbutesModelFromJson(json);
}
