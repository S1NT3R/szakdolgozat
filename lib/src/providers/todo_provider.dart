import 'package:chore_champion/src/exception/exception_handler.dart';
import 'package:chore_champion/src/models/todo/todo_model.dart';
import 'package:chore_champion/src/repositories/todo_repository.dart';
import 'package:chore_champion/src/resources/interfaces/loading_interface.dart';
import 'package:forest_logger/forest_logger.dart';

class TodoProvider extends LoadingInterface {
  List<TodoModel> todos = [];

  Future<void> getTodos(int? active, int? completed) async {
    try {
      isLoading = true;
      todos = await TodoRepository.getTodos(active, completed);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error getting todos: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> addTodo(
    String name,
    String? description,
    String? dueDate,
  ) async {
    try {
      isLoading = true;
      await TodoRepository.addTodo(
        name,
        description,
        dueDate,
      );
      await getTodos(null, null);
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
      await TodoRepository.updateTodo(
        id,
        name,
        description,
        dueDate,
      );
      await getTodos(null, null);
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
      await TodoRepository.deleteTodo(
        id,
      );
      await getTodos(null, null);
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
      await TodoRepository.toggleTodo(
        id,
        completed,
      );
      await getTodos(null, null);
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error toggling todo: $e");
      ExceptionHandler.returnException(e);
    }
  }

  void logout() {
    todos = [];
  }
}
