// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeroModelImpl _$$HeroModelImplFromJson(Map<String, dynamic> json) =>
    _$HeroModelImpl(
      id: (json['id'] as num).toInt(),
      hero_name: json['hero_name'] as String,
      hero_type: json['hero_type'] as String,
      hero_quotes: json['hero_quotes'] as String,
      description: json['description'] as String,
      complexity_lvl: (json['complexity_lvl'] as num).toInt(),
      attack_type: json['attack_type'] as String,
      image_url: json['image_url'] as String,
    );

Map<String, dynamic> _$$HeroModelImplToJson(_$HeroModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hero_name': instance.hero_name,
      'hero_type': instance.hero_type,
      'hero_quotes': instance.hero_quotes,
      'description': instance.description,
      'complexity_lvl': instance.complexity_lvl,
      'attack_type': instance.attack_type,
      'image_url': instance.image_url,
    };
