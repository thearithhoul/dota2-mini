// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mobility_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobilityModel _$MobilityModelFromJson(Map<String, dynamic> json) {
  return _MobilityModel.fromJson(json);
}

/// @nodoc
mixin _$MobilityModel {
  String get movement_speed => throw _privateConstructorUsedError;
  String get turn_rate => throw _privateConstructorUsedError;
  String get vision => throw _privateConstructorUsedError;

  /// Serializes this MobilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MobilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MobilityModelCopyWith<MobilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobilityModelCopyWith<$Res> {
  factory $MobilityModelCopyWith(
          MobilityModel value, $Res Function(MobilityModel) then) =
      _$MobilityModelCopyWithImpl<$Res, MobilityModel>;
  @useResult
  $Res call({String movement_speed, String turn_rate, String vision});
}

/// @nodoc
class _$MobilityModelCopyWithImpl<$Res, $Val extends MobilityModel>
    implements $MobilityModelCopyWith<$Res> {
  _$MobilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MobilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movement_speed = null,
    Object? turn_rate = null,
    Object? vision = null,
  }) {
    return _then(_value.copyWith(
      movement_speed: null == movement_speed
          ? _value.movement_speed
          : movement_speed // ignore: cast_nullable_to_non_nullable
              as String,
      turn_rate: null == turn_rate
          ? _value.turn_rate
          : turn_rate // ignore: cast_nullable_to_non_nullable
              as String,
      vision: null == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobilityModelImplCopyWith<$Res>
    implements $MobilityModelCopyWith<$Res> {
  factory _$$MobilityModelImplCopyWith(
          _$MobilityModelImpl value, $Res Function(_$MobilityModelImpl) then) =
      __$$MobilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String movement_speed, String turn_rate, String vision});
}

/// @nodoc
class __$$MobilityModelImplCopyWithImpl<$Res>
    extends _$MobilityModelCopyWithImpl<$Res, _$MobilityModelImpl>
    implements _$$MobilityModelImplCopyWith<$Res> {
  __$$MobilityModelImplCopyWithImpl(
      _$MobilityModelImpl _value, $Res Function(_$MobilityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MobilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movement_speed = null,
    Object? turn_rate = null,
    Object? vision = null,
  }) {
    return _then(_$MobilityModelImpl(
      movement_speed: null == movement_speed
          ? _value.movement_speed
          : movement_speed // ignore: cast_nullable_to_non_nullable
              as String,
      turn_rate: null == turn_rate
          ? _value.turn_rate
          : turn_rate // ignore: cast_nullable_to_non_nullable
              as String,
      vision: null == vision
          ? _value.vision
          : vision // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobilityModelImpl implements _MobilityModel {
  const _$MobilityModelImpl(
      {required this.movement_speed,
      required this.turn_rate,
      required this.vision});

  factory _$MobilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobilityModelImplFromJson(json);

  @override
  final String movement_speed;
  @override
  final String turn_rate;
  @override
  final String vision;

  @override
  String toString() {
    return 'MobilityModel(movement_speed: $movement_speed, turn_rate: $turn_rate, vision: $vision)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobilityModelImpl &&
            (identical(other.movement_speed, movement_speed) ||
                other.movement_speed == movement_speed) &&
            (identical(other.turn_rate, turn_rate) ||
                other.turn_rate == turn_rate) &&
            (identical(other.vision, vision) || other.vision == vision));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, movement_speed, turn_rate, vision);

  /// Create a copy of MobilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobilityModelImplCopyWith<_$MobilityModelImpl> get copyWith =>
      __$$MobilityModelImplCopyWithImpl<_$MobilityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobilityModelImplToJson(
      this,
    );
  }
}

abstract class _MobilityModel implements MobilityModel {
  const factory _MobilityModel(
      {required final String movement_speed,
      required final String turn_rate,
      required final String vision}) = _$MobilityModelImpl;

  factory _MobilityModel.fromJson(Map<String, dynamic> json) =
      _$MobilityModelImpl.fromJson;

  @override
  String get movement_speed;
  @override
  String get turn_rate;
  @override
  String get vision;

  /// Create a copy of MobilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobilityModelImplCopyWith<_$MobilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
