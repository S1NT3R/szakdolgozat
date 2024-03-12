import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/resources/helpers/key_helper.dart';
import 'package:chore_champion/src/resources/interceptors/connectivity_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/exception_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/token_interceptor.dart';
import 'package:chore_champion/src/services/converter/built_value_converter.dart';

part 'user_service.chopper.dart';

@ChopperApi(baseUrl: KeyHelper.baseUrl)
abstract class UserService extends ChopperService {
  @Post(path: 'api/user/login')
  @multipart
  Future<Response> login(
    @Part('email') String email,
    @Part('password') String password,
  );

  @Post(path: 'api/user/register')
  @multipart
  Future<Response> register(
    @Part('name') String name,
    @Part('email') String email,
    @Part('password') String password,
  );

  @Get(path: 'api/user/logout')
  Future<Response> logout();

  @Get(path: 'api/user')
  Future<Response> getProfile();

  @Post(path: 'api/user/upload-avatar')
  @multipart
  Future<Response> uploadAvatar(
    @PartFile('avatar') String? path,
  );

  @Post(path: 'api/user/delete-avatar')
  Future<Response> deleteAvatar();

  @Post(path: 'api/user/update')
  @multipart
  Future<Response> updateUserDetails(
    @Part('name') String name,
  );

  @Get(path: 'api/user/update-streak')
  Future<Response> updateStreak();

  @Post(path: 'api/user/change-password')
  @multipart
  Future<Response> changePassword(
    @Part('password') String password,
  );

  @Post(path: 'api/user/delete')
  Future<Response> deleteUser();

  static _$UserService create() {
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
        _$UserService(),
      ],
    );
    return _$UserService(client);
  }
}
