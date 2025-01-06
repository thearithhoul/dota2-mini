import 'package:freezed_annotation/freezed_annotation.dart';

import 'attack/attack_model.dart';
import 'defense/defense_model.dart';
import 'mobility/mobility_model.dart';

part 'stats_model.freezed.dart';
part 'stats_model.g.dart';

@freezed
class StatsModel with _$StatsModel {
  const factory StatsModel({
    required AttackModel attack,
    required DefenseModel defense,
    required MobilityModel mobility,
  }) = _StatsModel;

  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);
}
