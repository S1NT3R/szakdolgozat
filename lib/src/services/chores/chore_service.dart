import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/resources/helpers/key_helper.dart';
import 'package:chore_champion/src/resources/interceptors/connectivity_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/exception_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/token_interceptor.dart';
import 'package:chore_champion/src/services/converter/built_value_converter.dart';

part 'chore_service.chopper.dart';

@ChopperApi(baseUrl: KeyHelper.baseUrl)
abstract class ChoresService extends ChopperService {
  @Post(path: 'api/chore')
  @multipart
  Future<Response> getChores(
    @Part('active') int? active,
    @Part('completed') int? completed,
  );

  @Post(path: 'api/chore/add')
  @multipart
  Future<Response> addChore(
    @Part('name') String name,
    @Part('description') String? description,
    @Part('due_date') String? dueDate,
  );

  @Post(path: 'api/chore/update')
  @multipart
  Future<Response> updateChore(
    @Part('id') int id,
    @Part('name') String name,
    @Part('description') String? description,
    @Part('due_date') String? dueDate,
  );

  @Post(path: 'api/chore/delete')
  @multipart
  Future<Response> deleteChore(
    @Part('id') int id,
  );

  @Post(path: 'api/chore/toggle')
  @multipart
  Future<Response> toggleChore(
    @Part('id') int id,
    @Part('is_completed') int completed,
  );
  static _$ChoresService create() {
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
        _$ChoresService(),
      ],
    );
    return _$ChoresService(client);
  }
}
