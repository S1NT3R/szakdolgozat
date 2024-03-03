import 'package:freezed_annotation/freezed_annotation.dart';

part 'chore_model.freezed.dart';
part 'chore_model.g.dart';

@freezed
class ChoreModel with _$ChoreModel {
  factory ChoreModel({
    required int id,
    required String userId,
    required String name,
    required String? description,
    required bool isCompleted,
    required String? dueDate,
    required String? completedAt,
  }) = _ChoreModel;

  factory ChoreModel.fromJson(Map<String, dynamic> json) =>
      _$ChoreModelFromJson(json);
}
