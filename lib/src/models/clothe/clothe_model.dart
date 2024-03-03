import 'package:freezed_annotation/freezed_annotation.dart';

part 'clothe_model.freezed.dart';
part 'clothe_model.g.dart';

@freezed
class ClotheModel with _$ClotheModel {
  factory ClotheModel({
    required int id,
    required String userId,
    required String name,
    required String material,
    required String type,
    required String colorway,
    required List<String>? washingInstructions,
    required bool isInLaundry,
    required String? picture,
  }) = _ClotheModel;

  factory ClotheModel.fromJson(Map<String, dynamic> json) =>
      _$ClotheModelFromJson(json);
}
