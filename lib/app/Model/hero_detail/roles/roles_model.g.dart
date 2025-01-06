// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RolesModelImpl _$$RolesModelImplFromJson(Map<String, dynamic> json) =>
    _$RolesModelImpl(
      carray: (json['carray'] as num).toDouble(),
      support: (json['support'] as num).toDouble(),
      nuker: (json['nuker'] as num).toDouble(),
      disabler: (json['disabler'] as num).toDouble(),
      jungler: (json['jungler'] as num).toDouble(),
      durable: (json['durable'] as num).toDouble(),
      escape: (json['escape'] as num).toDouble(),
      pusher: (json['pusher'] as num).toDouble(),
      initiator: (json['initiator'] as num).toDouble(),
    );

Map<String, dynamic> _$$RolesModelImplToJson(_$RolesModelImpl instance) =>
    <String, dynamic>{
      'carray': instance.carray,
      'support': instance.support,
      'nuker': instance.nuker,
      'disabler': instance.disabler,
      'jungler': instance.jungler,
      'durable': instance.durable,
      'escape': instance.escape,
      'pusher': instance.pusher,
      'initiator': instance.initiator,
    };
