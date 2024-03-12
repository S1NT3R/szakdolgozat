import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/models/advice/advice_model.dart';
import 'package:chore_champion/src/services/advices/advice_service.dart';
import 'package:forest_logger/forest_logger.dart';

class AdviceRepository {
  static Future<List<AdviceModel>> getAdvices(String type) async {
    Response response = await AdvicesService.create().getAdvices(type);
    List<AdviceModel> advices = [];
    response.body["data"].forEach((advice) {
      advices.add(AdviceModel.fromJson(advice));
    });
    Forest.info("Advices: $advices");
    return advices;
  }

  static Future<List<AdviceModel>> getAllAdvices() async {
    Response response = await AdvicesService.create().getAllAdvices();
    List<AdviceModel> advices = [];
    response.body["data"].forEach((advice) {
      advices.add(AdviceModel.fromJson(advice));
    });
    Forest.info("Advices: $advices");
    return advices;
  }

  static Future<void> addAdvice(
    String type,
    String advice,
  ) async {
    await AdvicesService.create().addAdvice(
      type,
      advice,
    );
  }

  static Future<void> deleteAdvice(
    int adviceId,
  ) async {
    await AdvicesService.create().deleteAdvice(
      adviceId,
    );
  }
}
