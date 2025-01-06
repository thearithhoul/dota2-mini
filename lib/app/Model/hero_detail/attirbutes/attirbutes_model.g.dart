// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attirbutes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttirbutesModelImpl _$$AttirbutesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttirbutesModelImpl(
      base_health: (json['base_health'] as num).toDouble(),
      base_mana: (json['base_mana'] as num).toDouble(),
      bease_health_regen: (json['bease_health_regen'] as num).toDouble(),
      bease_mana_regen: (json['bease_mana_regen'] as num).toDouble(),
      base_str: (json['base_str'] as num).toDouble(),
      base_agi: (json['base_agi'] as num).toDouble(),
      base_int: (json['base_int'] as num).toDouble(),
      str_per_lvl: (json['str_per_lvl'] as num).toDouble(),
      agi_per_lvl: (json['agi_per_lvl'] as num).toDouble(),
      int_per_lvl: (json['int_per_lvl'] as num).toDouble(),
    );

Map<String, dynamic> _$$AttirbutesModelImplToJson(
        _$AttirbutesModelImpl instance) =>
    <String, dynamic>{
      'base_health': instance.base_health,
      'base_mana': instance.base_mana,
      'bease_health_regen': instance.bease_health_regen,
      'bease_mana_regen': instance.bease_mana_regen,
      'base_str': instance.base_str,
      'base_agi': instance.base_agi,
      'base_int': instance.base_int,
      'str_per_lvl': instance.str_per_lvl,
      'agi_per_lvl': instance.agi_per_lvl,
      'int_per_lvl': instance.int_per_lvl,
    };
