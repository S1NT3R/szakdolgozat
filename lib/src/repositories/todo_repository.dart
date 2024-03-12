import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/models/todo/todo_model.dart';
import 'package:chore_champion/src/services/todo/todo_service.dart';
import 'package:forest_logger/forest_logger.dart';

class TodoRepository {
  static Future<List<TodoModel>> getTodos(int? active, int? completed) async {
    Response response = await TodoService.create().getTodos(active, completed);
    List<TodoModel> todos = [];
    response.body["data"].forEach((todo) {
      todos.add(TodoModel.fromJson(todo));
    });
    Forest.info("Todos: $todos");
    return todos;
  }

  static Future<void> addTodo(
    String name,
    String? description,
    String? dueDate,
  ) async {
    await TodoService.create().addTodo(
      name,
      description,
      dueDate,
    );
  }

  static Future<void> updateTodo(
    int id,
    String name,
    String? description,
    String? dueDate,
  ) async {
    await TodoService.create().updateTodo(
      id,
      name,
      description,
      dueDate,
    );
  }

  static Future<void> deleteTodo(
    int id,
  ) async {
    await TodoService.create().deleteTodo(
      id,
    );
  }

  static Future<void> toggleTodo(
    int id,
    int completed,
  ) async {
    await TodoService.create().toggleTodo(
      id,
      completed,
    );
  }
}
