// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttackModel _$AttackModelFromJson(Map<String, dynamic> json) {
  return _AttackModel.fromJson(json);
}

/// @nodoc
mixin _$AttackModel {
  String get attack_dmg => throw _privateConstructorUsedError;
  String get attack_time => throw _privateConstructorUsedError;
  String get attack_range => throw _privateConstructorUsedError;
  String get projectile_speed => throw _privateConstructorUsedError;

  /// Serializes this AttackModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttackModelCopyWith<AttackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttackModelCopyWith<$Res> {
  factory $AttackModelCopyWith(
          AttackModel value, $Res Function(AttackModel) then) =
      _$AttackModelCopyWithImpl<$Res, AttackModel>;
  @useResult
  $Res call(
      {String attack_dmg,
      String attack_time,
      String attack_range,
      String projectile_speed});
}

/// @nodoc
class _$AttackModelCopyWithImpl<$Res, $Val extends AttackModel>
    implements $AttackModelCopyWith<$Res> {
  _$AttackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attack_dmg = null,
    Object? attack_time = null,
    Object? attack_range = null,
    Object? projectile_speed = null,
  }) {
    return _then(_value.copyWith(
      attack_dmg: null == attack_dmg
          ? _value.attack_dmg
          : attack_dmg // ignore: cast_nullable_to_non_nullable
              as String,
      attack_time: null == attack_time
          ? _value.attack_time
          : attack_time // ignore: cast_nullable_to_non_nullable
              as String,
      attack_range: null == attack_range
          ? _value.attack_range
          : attack_range // ignore: cast_nullable_to_non_nullable
              as String,
      projectile_speed: null == projectile_speed
          ? _value.projectile_speed
          : projectile_speed // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttackModelImplCopyWith<$Res>
    implements $AttackModelCopyWith<$Res> {
  factory _$$AttackModelImplCopyWith(
          _$AttackModelImpl value, $Res Function(_$AttackModelImpl) then) =
      __$$AttackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String attack_dmg,
      String attack_time,
      String attack_range,
      String projectile_speed});
}

/// @nodoc
class __$$AttackModelImplCopyWithImpl<$Res>
    extends _$AttackModelCopyWithImpl<$Res, _$AttackModelImpl>
    implements _$$AttackModelImplCopyWith<$Res> {
  __$$AttackModelImplCopyWithImpl(
      _$AttackModelImpl _value, $Res Function(_$AttackModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttackModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attack_dmg = null,
    Object? attack_time = null,
    Object? attack_range = null,
    Object? projectile_speed = null,
  }) {
    return _then(_$AttackModelImpl(
      attack_dmg: null == attack_dmg
          ? _value.attack_dmg
          : attack_dmg // ignore: cast_nullable_to_non_nullable
              as String,
      attack_time: null == attack_time
          ? _value.attack_time
          : attack_time // ignore: cast_nullable_to_non_nullable
              as String,
      attack_range: null == attack_range
          ? _value.attack_range
          : attack_range // ignore: cast_nullable_to_non_nullable
              as String,
      projectile_speed: null == projectile_speed
          ? _value.projectile_speed
          : projectile_speed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttackModelImpl implements _AttackModel {
  const _$AttackModelImpl(
      {required this.attack_dmg,
      required this.attack_time,
      required this.attack_range,
      required this.projectile_speed});

  factory _$AttackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttackModelImplFromJson(json);

  @override
  final String attack_dmg;
  @override
  final String attack_time;
  @override
  final String attack_range;
  @override
  final String projectile_speed;

  @override
  String toString() {
    return 'AttackModel(attack_dmg: $attack_dmg, attack_time: $attack_time, attack_range: $attack_range, projectile_speed: $projectile_speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttackModelImpl &&
            (identical(other.attack_dmg, attack_dmg) ||
                other.attack_dmg == attack_dmg) &&
            (identical(other.attack_time, attack_time) ||
                other.attack_time == attack_time) &&
            (identical(other.attack_range, attack_range) ||
                other.attack_range == attack_range) &&
            (identical(other.projectile_speed, projectile_speed) ||
                other.projectile_speed == projectile_speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, attack_dmg, attack_time, attack_range, projectile_speed);

  /// Create a copy of AttackModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttackModelImplCopyWith<_$AttackModelImpl> get copyWith =>
      __$$AttackModelImplCopyWithImpl<_$AttackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttackModelImplToJson(
      this,
    );
  }
}

abstract class _AttackModel implements AttackModel {
  const factory _AttackModel(
      {required final String attack_dmg,
      required final String attack_time,
      required final String attack_range,
      required final String projectile_speed}) = _$AttackModelImpl;

  factory _AttackModel.fromJson(Map<String, dynamic> json) =
      _$AttackModelImpl.fromJson;

  @override
  String get attack_dmg;
  @override
  String get attack_time;
  @override
  String get attack_range;
  @override
  String get projectile_speed;

  /// Create a copy of AttackModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttackModelImplCopyWith<_$AttackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
