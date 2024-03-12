import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/models/chore/chore_model.dart';
import 'package:chore_champion/src/services/chores/chore_service.dart';
import 'package:forest_logger/forest_logger.dart';

class ChoreRepository {
  static Future<List<ChoreModel>> getChores(int? active, int? completed) async {
    Response response =
        await ChoresService.create().getChores(active, completed);
    List<ChoreModel> todos = [];
    response.body["data"].forEach((todo) {
      todos.add(ChoreModel.fromJson(todo));
    });
    Forest.info("Todos: $todos");
    return todos;
  }

  static Future<void> addChore(
    String name,
    String? description,
    String? dueDate,
  ) async {
    await ChoresService.create().addChore(
      name,
      description,
      dueDate,
    );
  }

  static Future<void> updateChore(
    int id,
    String name,
    String? description,
    String? dueDate,
  ) async {
    await ChoresService.create().updateChore(
      id,
      name,
      description,
      dueDate,
    );
  }

  static Future<void> deleteChore(
    int id,
  ) async {
    await ChoresService.create().deleteChore(
      id,
    );
  }

  static Future<void> toggleChore(
    int id,
    int completed,
  ) async {
    await ChoresService.create().toggleChore(
      id,
      completed,
    );
  }
}
