import 'package:freezed_annotation/freezed_annotation.dart';

part 'roles_model.freezed.dart';
part 'roles_model.g.dart';

@freezed
class RolesModel with _$RolesModel {
  const factory RolesModel({
    required double carray,
    required double support,
    required double nuker,
    required double disabler,
    required double jungler,
    required double durable,
    required double escape,
    required double pusher,
    required double initiator,
  }) = _RolesModel;

  factory RolesModel.fromJson(Map<String, dynamic> json) =>
      _$RolesModelFromJson(json);
}
