import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobility_model.freezed.dart';
part 'mobility_model.g.dart';

@freezed
class MobilityModel with _$MobilityModel {
  const factory MobilityModel({
    required String movement_speed,
    required String turn_rate,
    required String vision,
  }) = _MobilityModel;

  factory MobilityModel.fromJson(Map<String, dynamic> json) =>
      _$MobilityModelFromJson(json);
}
