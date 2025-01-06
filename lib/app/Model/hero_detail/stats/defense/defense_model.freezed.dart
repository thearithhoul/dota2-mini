// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'defense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DefenseModel _$DefenseModelFromJson(Map<String, dynamic> json) {
  return _DefenseModel.fromJson(json);
}

/// @nodoc
mixin _$DefenseModel {
  String get armor => throw _privateConstructorUsedError;
  String get magic_resist => throw _privateConstructorUsedError;

  /// Serializes this DefenseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefenseModelCopyWith<DefenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefenseModelCopyWith<$Res> {
  factory $DefenseModelCopyWith(
          DefenseModel value, $Res Function(DefenseModel) then) =
      _$DefenseModelCopyWithImpl<$Res, DefenseModel>;
  @useResult
  $Res call({String armor, String magic_resist});
}

/// @nodoc
class _$DefenseModelCopyWithImpl<$Res, $Val extends DefenseModel>
    implements $DefenseModelCopyWith<$Res> {
  _$DefenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armor = null,
    Object? magic_resist = null,
  }) {
    return _then(_value.copyWith(
      armor: null == armor
          ? _value.armor
          : armor // ignore: cast_nullable_to_non_nullable
              as String,
      magic_resist: null == magic_resist
          ? _value.magic_resist
          : magic_resist // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefenseModelImplCopyWith<$Res>
    implements $DefenseModelCopyWith<$Res> {
  factory _$$DefenseModelImplCopyWith(
          _$DefenseModelImpl value, $Res Function(_$DefenseModelImpl) then) =
      __$$DefenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String armor, String magic_resist});
}

/// @nodoc
class __$$DefenseModelImplCopyWithImpl<$Res>
    extends _$DefenseModelCopyWithImpl<$Res, _$DefenseModelImpl>
    implements _$$DefenseModelImplCopyWith<$Res> {
  __$$DefenseModelImplCopyWithImpl(
      _$DefenseModelImpl _value, $Res Function(_$DefenseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? armor = null,
    Object? magic_resist = null,
  }) {
    return _then(_$DefenseModelImpl(
      armor: null == armor
          ? _value.armor
          : armor // ignore: cast_nullable_to_non_nullable
              as String,
      magic_resist: null == magic_resist
          ? _value.magic_resist
          : magic_resist // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefenseModelImpl implements _DefenseModel {
  const _$DefenseModelImpl({required this.armor, required this.magic_resist});

  factory _$DefenseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefenseModelImplFromJson(json);

  @override
  final String armor;
  @override
  final String magic_resist;

  @override
  String toString() {
    return 'DefenseModel(armor: $armor, magic_resist: $magic_resist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefenseModelImpl &&
            (identical(other.armor, armor) || other.armor == armor) &&
            (identical(other.magic_resist, magic_resist) ||
                other.magic_resist == magic_resist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, armor, magic_resist);

  /// Create a copy of DefenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefenseModelImplCopyWith<_$DefenseModelImpl> get copyWith =>
      __$$DefenseModelImplCopyWithImpl<_$DefenseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefenseModelImplToJson(
      this,
    );
  }
}

abstract class _DefenseModel implements DefenseModel {
  const factory _DefenseModel(
      {required final String armor,
      required final String magic_resist}) = _$DefenseModelImpl;

  factory _DefenseModel.fromJson(Map<String, dynamic> json) =
      _$DefenseModelImpl.fromJson;

  @override
  String get armor;
  @override
  String get magic_resist;

  /// Create a copy of DefenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefenseModelImplCopyWith<_$DefenseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
