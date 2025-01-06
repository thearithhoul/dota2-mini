// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_assets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeroAssetsModel _$HeroAssetsModelFromJson(Map<String, dynamic> json) {
  return _HeroAssetsModel.fromJson(json);
}

/// @nodoc
mixin _$HeroAssetsModel {
  String get hero_idle_image_url => throw _privateConstructorUsedError;
  String get hero_idle_vod_url => throw _privateConstructorUsedError;

  /// Serializes this HeroAssetsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeroAssetsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroAssetsModelCopyWith<HeroAssetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroAssetsModelCopyWith<$Res> {
  factory $HeroAssetsModelCopyWith(
          HeroAssetsModel value, $Res Function(HeroAssetsModel) then) =
      _$HeroAssetsModelCopyWithImpl<$Res, HeroAssetsModel>;
  @useResult
  $Res call({String hero_idle_image_url, String hero_idle_vod_url});
}

/// @nodoc
class _$HeroAssetsModelCopyWithImpl<$Res, $Val extends HeroAssetsModel>
    implements $HeroAssetsModelCopyWith<$Res> {
  _$HeroAssetsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroAssetsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hero_idle_image_url = null,
    Object? hero_idle_vod_url = null,
  }) {
    return _then(_value.copyWith(
      hero_idle_image_url: null == hero_idle_image_url
          ? _value.hero_idle_image_url
          : hero_idle_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      hero_idle_vod_url: null == hero_idle_vod_url
          ? _value.hero_idle_vod_url
          : hero_idle_vod_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroAssetsModelImplCopyWith<$Res>
    implements $HeroAssetsModelCopyWith<$Res> {
  factory _$$HeroAssetsModelImplCopyWith(_$HeroAssetsModelImpl value,
          $Res Function(_$HeroAssetsModelImpl) then) =
      __$$HeroAssetsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hero_idle_image_url, String hero_idle_vod_url});
}

/// @nodoc
class __$$HeroAssetsModelImplCopyWithImpl<$Res>
    extends _$HeroAssetsModelCopyWithImpl<$Res, _$HeroAssetsModelImpl>
    implements _$$HeroAssetsModelImplCopyWith<$Res> {
  __$$HeroAssetsModelImplCopyWithImpl(
      _$HeroAssetsModelImpl _value, $Res Function(_$HeroAssetsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroAssetsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hero_idle_image_url = null,
    Object? hero_idle_vod_url = null,
  }) {
    return _then(_$HeroAssetsModelImpl(
      hero_idle_image_url: null == hero_idle_image_url
          ? _value.hero_idle_image_url
          : hero_idle_image_url // ignore: cast_nullable_to_non_nullable
              as String,
      hero_idle_vod_url: null == hero_idle_vod_url
          ? _value.hero_idle_vod_url
          : hero_idle_vod_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroAssetsModelImpl implements _HeroAssetsModel {
  const _$HeroAssetsModelImpl(
      {required this.hero_idle_image_url, required this.hero_idle_vod_url});

  factory _$HeroAssetsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroAssetsModelImplFromJson(json);

  @override
  final String hero_idle_image_url;
  @override
  final String hero_idle_vod_url;

  @override
  String toString() {
    return 'HeroAssetsModel(hero_idle_image_url: $hero_idle_image_url, hero_idle_vod_url: $hero_idle_vod_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroAssetsModelImpl &&
            (identical(other.hero_idle_image_url, hero_idle_image_url) ||
                other.hero_idle_image_url == hero_idle_image_url) &&
            (identical(other.hero_idle_vod_url, hero_idle_vod_url) ||
                other.hero_idle_vod_url == hero_idle_vod_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hero_idle_image_url, hero_idle_vod_url);

  /// Create a copy of HeroAssetsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroAssetsModelImplCopyWith<_$HeroAssetsModelImpl> get copyWith =>
      __$$HeroAssetsModelImplCopyWithImpl<_$HeroAssetsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroAssetsModelImplToJson(
      this,
    );
  }
}

abstract class _HeroAssetsModel implements HeroAssetsModel {
  const factory _HeroAssetsModel(
      {required final String hero_idle_image_url,
      required final String hero_idle_vod_url}) = _$HeroAssetsModelImpl;

  factory _HeroAssetsModel.fromJson(Map<String, dynamic> json) =
      _$HeroAssetsModelImpl.fromJson;

  @override
  String get hero_idle_image_url;
  @override
  String get hero_idle_vod_url;

  /// Create a copy of HeroAssetsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroAssetsModelImplCopyWith<_$HeroAssetsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
