import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/resources/helpers/key_helper.dart';
import 'package:chore_champion/src/resources/interceptors/connectivity_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/exception_interceptor.dart';
import 'package:chore_champion/src/resources/interceptors/token_interceptor.dart';
import 'package:chore_champion/src/services/converter/built_value_converter.dart';

part 'clothes_service.chopper.dart';

@ChopperApi(baseUrl: KeyHelper.baseUrl)
abstract class ClothesService extends ChopperService {
  @Get(path: 'api/clothe')
  Future<Response> getClothes();

  @Get(path: 'api/clothe/generate')
  Future<Response> generateLaundry();

  @Post(path: 'api/clothe/add')
  @multipart
  Future<Response> addClothe(
    @Part('name') String name,
    @Part('material') String material,
    @Part('type') String type,
    @Part('colorway') String colorway,
    @Part('washing_instructions') List washingInstructions,
    @Part('is_in_laundry') int isInLaundry,
    @PartFile('picture') String? picture,
  );

  @Post(path: 'api/clothe/delete')
  @multipart
  Future<Response> deleteAdvice(
    @Part('clothes_id') int clothesId,
  );
  static _$ClothesService create() {
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
        _$ClothesService(),
      ],
    );
    return _$ClothesService(client);
  }
}
