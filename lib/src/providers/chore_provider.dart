import 'package:chore_champion/src/exception/exception_handler.dart';
import 'package:chore_champion/src/models/chore/chore_model.dart';
import 'package:chore_champion/src/repositories/chore_repository.dart';
import 'package:chore_champion/src/resources/interfaces/loading_interface.dart';
import 'package:forest_logger/forest_logger.dart';

class ChoreProvider extends LoadingInterface {
  List<ChoreModel> chores = [];

  Future<void> getChores(int? active, int? completed) async {
    try {
      isLoading = true;
      chores = await ChoreRepository.getChores(active, completed);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error getting chores: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> addChore(
    String name,
    String? description,
    String? dueDate,
  ) async {
    try {
      isLoading = true;
      await ChoreRepository.addChore(
        name,
        description,
        dueDate,
      );
      await getChores(null, null);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error adding todo: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> updateTodo(
    int id,
    String name,
    String? description,
    String? dueDate,
  ) async {
    try {
      isLoading = true;
      await ChoreRepository.updateChore(
        id,
        name,
        description,
        dueDate,
      );
      await getChores(null, null);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error updating todo: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> deleteTodo(
    int id,
  ) async {
    try {
      isLoading = true;
      await ChoreRepository.deleteChore(
        id,
      );
      await getChores(null, null);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error deleting todo: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> toggleTodo(
    int id,
    int completed,
  ) async {
    try {
      isLoading = true;
      await ChoreRepository.toggleChore(
        id,
        completed,
      );
      await getChores(null, null);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error toggling todo: $e");
      ExceptionHandler.returnException(e);
    }
  }

  void logout() {
    chores = [];
  }
}
