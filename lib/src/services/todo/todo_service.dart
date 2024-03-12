import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/resources/helpers/key_helper.dart';
import 'package:chore_champion/src/resources/interceptors/connectivity_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/exception_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/token_interceptor.dart';
import 'package:chore_champion/src/services/converter/built_value_converter.dart';

part 'todo_service.chopper.dart';

@ChopperApi(baseUrl: KeyHelper.baseUrl)
abstract class TodoService extends ChopperService {
  @Post(path: 'api/todo')
  @multipart
  Future<Response> getTodos(
    @Part('active') int? active,
    @Part('completed') int? completed,
  );

  @Post(path: 'api/todo/add')
  @multipart
  Future<Response> addTodo(
    @Part('name') String name,
    @Part('description') String? description,
    @Part('due_date') String? dueDate,
  );

  @Post(path: 'api/todo/update')
  @multipart
  Future<Response> updateTodo(
    @Part('id') int id,
    @Part('name') String name,
    @Part('description') String? description,
    @Part('due_date') String? dueDate,
  );

  @Post(path: 'api/todo/delete')
  @multipart
  Future<Response> deleteTodo(
    @Part('id') int id,
  );

  @Post(path: 'api/todo/toggle')
  @multipart
  Future<Response> toggleTodo(
    @Part('id') int id,
    @Part('is_completed') int completed,
  );
  static _$TodoService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(KeyHelper.baseUrl),
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
        ConnectivityInterceptor(),
        ExceptionInterceptor(),
        TokenInterceptor(),
      ],
      services: [
        _$TodoService(),
      ],
    );
    return _$TodoService(client);
  }
}
