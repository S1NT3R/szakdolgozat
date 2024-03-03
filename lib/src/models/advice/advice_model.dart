import 'package:freezed_annotation/freezed_annotation.dart';

part 'advice_model.freezed.dart';
part 'advice_model.g.dart';

@freezed
class AdviceModel with _$AdviceModel {
  factory AdviceModel({
    required int id,
    required String type,
    required String advice,
  }) = _AdviceModel;

  factory AdviceModel.fromJson(Map<String, dynamic> json) =>
      _$AdviceModelFromJson(json);
}
