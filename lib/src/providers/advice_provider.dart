import 'package:chore_champion/src/exception/exception_handler.dart';
import 'package:chore_champion/src/models/advice/advice_model.dart';
import 'package:chore_champion/src/repositories/advice_repository.dart';
import 'package:chore_champion/src/resources/interfaces/loading_interface.dart';
import 'package:forest_logger/forest_logger.dart';

class AdviceProvider extends LoadingInterface {
  List<AdviceModel> advices = [];

  Future<void> getAdvices(String type) async {
    try {
      isLoading = true;
      advices = await AdviceRepository.getAdvices(type);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error getting advices: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> getAllAdvices() async {
    try {
      isLoading = true;
      advices = await AdviceRepository.getAllAdvices();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error getting advices: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> addAdvice(
    String type,
    String advice,
  ) async {
    try {
      isLoading = true;
      await AdviceRepository.addAdvice(
        type,
        advice,
      );
      await getAdvices(type);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error adding advice: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> deleteAdvice(
    int adviceId,
  ) async {
    try {
      isLoading = true;
      await AdviceRepository.deleteAdvice(
        adviceId,
      );
      await getAllAdvices();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error deleting advice: $e");
      ExceptionHandler.returnException(e);
    }
  }

  void logout() {
    advices = [];
  }
}
