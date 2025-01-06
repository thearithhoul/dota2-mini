// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeroDetailModelImpl _$$HeroDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HeroDetailModelImpl(
      attirbutes: AttirbutesModel.fromJson(
          (json['attirbutes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      hero_assets: HeroAssetsModel.fromJson(
          (json['hero_assets'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      roles: RolesModel.fromJson((json['roles'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
      stats: StatsModel.fromJson((json['stats'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      )),
    );

Map<String, dynamic> _$$HeroDetailModelImplToJson(
        _$HeroDetailModelImpl instance) =>
    <String, dynamic>{
      'attirbutes': instance.attirbutes,
      'hero_assets': instance.hero_assets,
      'roles': instance.roles,
      'stats': instance.stats,
    };
