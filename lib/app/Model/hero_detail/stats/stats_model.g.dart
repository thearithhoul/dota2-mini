// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsModelImpl _$$StatsModelImplFromJson(Map<String, dynamic> json) =>
    _$StatsModelImpl(
      attack: AttackModel.fromJson((json['attack'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      defense:
          DefenseModel.fromJson((json['defense'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      mobility:
          MobilityModel.fromJson((json['mobility'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
    );

Map<String, dynamic> _$$StatsModelImplToJson(_$StatsModelImpl instance) =>
    <String, dynamic>{
      'attack': instance.attack,
      'defense': instance.defense,
      'mobility': instance.mobility,
    };
