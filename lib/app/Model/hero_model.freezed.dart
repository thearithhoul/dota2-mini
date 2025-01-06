// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeroModel _$HeroModelFromJson(Map<String, dynamic> json) {
  return _HeroModel.fromJson(json);
}

/// @nodoc
mixin _$HeroModel {
  int get id => throw _privateConstructorUsedError;
  String get hero_name => throw _privateConstructorUsedError;
  String get hero_type => throw _privateConstructorUsedError;
  String get hero_quotes => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get complexity_lvl => throw _privateConstructorUsedError;
  String get attack_type => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;

  /// Serializes this HeroModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroModelCopyWith<HeroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroModelCopyWith<$Res> {
  factory $HeroModelCopyWith(HeroModel value, $Res Function(HeroModel) then) =
      _$HeroModelCopyWithImpl<$Res, HeroModel>;
  @useResult
  $Res call(
      {int id,
      String hero_name,
      String hero_type,
      String hero_quotes,
      String description,
      int complexity_lvl,
      String attack_type,
      String image_url});
}

/// @nodoc
class _$HeroModelCopyWithImpl<$Res, $Val extends HeroModel>
    implements $HeroModelCopyWith<$Res> {
  _$HeroModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hero_name = null,
    Object? hero_type = null,
    Object? hero_quotes = null,
    Object? description = null,
    Object? complexity_lvl = null,
    Object? attack_type = null,
    Object? image_url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hero_name: null == hero_name
          ? _value.hero_name
          : hero_name // ignore: cast_nullable_to_non_nullable
              as String,
      hero_type: null == hero_type
          ? _value.hero_type
          : hero_type // ignore: cast_nullable_to_non_nullable
              as String,
      hero_quotes: null == hero_quotes
          ? _value.hero_quotes
          : hero_quotes // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complexity_lvl: null == complexity_lvl
          ? _value.complexity_lvl
          : complexity_lvl // ignore: cast_nullable_to_non_nullable
              as int,
      attack_type: null == attack_type
          ? _value.attack_type
          : attack_type // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroModelImplCopyWith<$Res>
    implements $HeroModelCopyWith<$Res> {
  factory _$$HeroModelImplCopyWith(
          _$HeroModelImpl value, $Res Function(_$HeroModelImpl) then) =
      __$$HeroModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String hero_name,
      String hero_type,
      String hero_quotes,
      String description,
      int complexity_lvl,
      String attack_type,
      String image_url});
}

/// @nodoc
class __$$HeroModelImplCopyWithImpl<$Res>
    extends _$HeroModelCopyWithImpl<$Res, _$HeroModelImpl>
    implements _$$HeroModelImplCopyWith<$Res> {
  __$$HeroModelImplCopyWithImpl(
      _$HeroModelImpl _value, $Res Function(_$HeroModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hero_name = null,
    Object? hero_type = null,
    Object? hero_quotes = null,
    Object? description = null,
    Object? complexity_lvl = null,
    Object? attack_type = null,
    Object? image_url = null,
  }) {
    return _then(_$HeroModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hero_name: null == hero_name
          ? _value.hero_name
          : hero_name // ignore: cast_nullable_to_non_nullable
              as String,
      hero_type: null == hero_type
          ? _value.hero_type
          : hero_type // ignore: cast_nullable_to_non_nullable
              as String,
      hero_quotes: null == hero_quotes
          ? _value.hero_quotes
          : hero_quotes // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complexity_lvl: null == complexity_lvl
          ? _value.complexity_lvl
          : complexity_lvl // ignore: cast_nullable_to_non_nullable
              as int,
      attack_type: null == attack_type
          ? _value.attack_type
          : attack_type // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroModelImpl implements _HeroModel {
  const _$HeroModelImpl(
      {required this.id,
      required this.hero_name,
      required this.hero_type,
      required this.hero_quotes,
      required this.description,
      required this.complexity_lvl,
      required this.attack_type,
      required this.image_url});

  factory _$HeroModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroModelImplFromJson(json);

  @override
  final int id;
  @override
  final String hero_name;
  @override
  final String hero_type;
  @override
  final String hero_quotes;
  @override
  final String description;
  @override
  final int complexity_lvl;
  @override
  final String attack_type;
  @override
  final String image_url;

  @override
  String toString() {
    return 'HeroModel(id: $id, hero_name: $hero_name, hero_type: $hero_type, hero_quotes: $hero_quotes, description: $description, complexity_lvl: $complexity_lvl, attack_type: $attack_type, image_url: $image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hero_name, hero_name) ||
                other.hero_name == hero_name) &&
            (identical(other.hero_type, hero_type) ||
                other.hero_type == hero_type) &&
            (identical(other.hero_quotes, hero_quotes) ||
                other.hero_quotes == hero_quotes) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.complexity_lvl, complexity_lvl) ||
                other.complexity_lvl == complexity_lvl) &&
            (identical(other.attack_type, attack_type) ||
                other.attack_type == attack_type) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, hero_name, hero_type,
      hero_quotes, description, complexity_lvl, attack_type, image_url);

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroModelImplCopyWith<_$HeroModelImpl> get copyWith =>
      __$$HeroModelImplCopyWithImpl<_$HeroModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroModelImplToJson(
      this,
    );
  }
}

abstract class _HeroModel implements HeroModel {
  const factory _HeroModel(
      {required final int id,
      required final String hero_name,
      required final String hero_type,
      required final String hero_quotes,
      required final String description,
      required final int complexity_lvl,
      required final String attack_type,
      required final String image_url}) = _$HeroModelImpl;

  factory _HeroModel.fromJson(Map<String, dynamic> json) =
      _$HeroModelImpl.fromJson;

  @override
  int get id;
  @override
  String get hero_name;
  @override
  String get hero_type;
  @override
  String get hero_quotes;
  @override
  String get description;
  @override
  int get complexity_lvl;
  @override
  String get attack_type;
  @override
  String get image_url;

  /// Create a copy of HeroModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroModelImplCopyWith<_$HeroModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
