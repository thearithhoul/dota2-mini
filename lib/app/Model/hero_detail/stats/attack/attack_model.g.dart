// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attack_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttackModelImpl _$$AttackModelImplFromJson(Map<String, dynamic> json) =>
    _$AttackModelImpl(
      attack_dmg: json['attack_dmg'] as String,
      attack_time: json['attack_time'] as String,
      attack_range: json['attack_range'] as String,
      projectile_speed: json['projectile_speed'] as String,
    );

Map<String, dynamic> _$$AttackModelImplToJson(_$AttackModelImpl instance) =>
    <String, dynamic>{
      'attack_dmg': instance.attack_dmg,
      'attack_time': instance.attack_time,
      'attack_range': instance.attack_range,
      'projectile_speed': instance.projectile_speed,
    };
