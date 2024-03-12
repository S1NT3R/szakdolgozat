// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$TodoService extends TodoService {
  _$TodoService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = TodoService;

  @override
  Future<Response<dynamic>> getTodos(
    int active,
    int completed,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/todo');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'active',
        active,
      ),
      PartValue<int>(
        'completed',
        completed,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addTodo(
    String name,
    String description,
    String dueDate,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/todo/add');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'name',
        name,
      ),
      PartValue<String>(
        'description',
        description,
      ),
      PartValue<String>(
        'due_date',
        dueDate,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateTodo(
    int id,
    String name,
    String description,
    String dueDate,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/todo/update');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'id',
        id,
      ),
      PartValue<String>(
        'name',
        name,
      ),
      PartValue<String>(
        'description',
        description,
      ),
      PartValue<String>(
        'due_date',
        dueDate,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteTodo(int id) {
    final Uri $url = Uri.parse('https://localhost:8000/api/todo/delete');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'id',
        id,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> toggleTodo(
    int id,
    int completed,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/todo/toggle');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'id',
        id,
      ),
      PartValue<int>(
        'is_completed',
        completed,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
