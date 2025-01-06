import 'package:freezed_annotation/freezed_annotation.dart';

part 'defense_model.freezed.dart';
part 'defense_model.g.dart';

@freezed
class DefenseModel with _$DefenseModel {
  const factory DefenseModel({
    required String armor,
    required String magic_resist,
  }) = _DefenseModel;

  factory DefenseModel.fromJson(Map<String, dynamic> json) =>
      _$DefenseModelFromJson(json);
}
