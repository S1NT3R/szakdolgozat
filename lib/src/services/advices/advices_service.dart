import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/resources/helpers/key_helper.dart';
import 'package:chore_champion/src/resources/interceptors/connectivity_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/exception_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/token_interceptor.dart';
import 'package:chore_champion/src/services/converter/built_value_converter.dart';

part 'advices_service.chopper.dart';

@ChopperApi(baseUrl: KeyHelper.baseUrl)
abstract class AdvicesService extends ChopperService {
  @Post(path: 'api/advice')
  @multipart
  Future<Response> getAdvices(
    @Part('active') String type,
  );

  @Get(path: 'api/advice/all')
  Future<Response> getAllAdvices();

  @Post(path: 'api/advice/add')
  @multipart
  Future<Response> addAdvice(
    @Part('type') String type,
    @Part('advice') String advice,
  );

  @Post(path: 'api/advice/delete')
  @multipart
  Future<Response> deleteAdvice(
    @Part('advice_id') int adviceId,
  );
  static _$AdvicesService create() {
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
        _$AdvicesService(),
      ],
    );
    return _$AdvicesService(client);
  }
}
