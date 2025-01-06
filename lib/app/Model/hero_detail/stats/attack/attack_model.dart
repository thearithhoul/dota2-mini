import 'package:freezed_annotation/freezed_annotation.dart';

part 'attack_model.freezed.dart';
part 'attack_model.g.dart';

@freezed
class AttackModel with _$AttackModel {
  const factory AttackModel({
    required String attack_dmg,
    required String attack_time,
    required String attack_range,
    required String projectile_speed,
  }) = _AttackModel;

  factory AttackModel.fromJson(Map<String, dynamic> json) =>
      _$AttackModelFromJson(json);
}
