// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobility_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobilityModelImpl _$$MobilityModelImplFromJson(Map<String, dynamic> json) =>
    _$MobilityModelImpl(
      movement_speed: json['movement_speed'] as String,
      turn_rate: json['turn_rate'] as String,
      vision: json['vision'] as String,
    );

Map<String, dynamic> _$$MobilityModelImplToJson(_$MobilityModelImpl instance) =>
    <String, dynamic>{
      'movement_speed': instance.movement_speed,
      'turn_rate': instance.turn_rate,
      'vision': instance.vision,
    };
