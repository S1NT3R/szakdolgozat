import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/models/clothe/clothe_model.dart';
import 'package:chore_champion/src/services/clothes/clothe_service.dart';
import 'package:forest_logger/forest_logger.dart';

class ClotheRepository {
  static Future<List<ClotheModel>> getClothes() async {
    Response response = await ClothesService.create().getClothes();
    List<ClotheModel> clothes = [];
    response.body["data"].forEach((clothe) {
      clothes.add(ClotheModel.fromJson(clothe));
    });
    Forest.info("Clothes: $clothes");
    return clothes;
  }

  static Future<void> addClothe(
    String name,
    String material,
    String type,
    String colorway,
    List washingInstructions,
    int isInLaundry,
    String? picture,
  ) async {
    await ClothesService.create().addClothe(
      name,
      material,
      type,
      colorway,
      washingInstructions,
      isInLaundry,
      picture,
    );
  }

  static Future<void> deleteClothe(
    int clothesId,
  ) async {
    await ClothesService.create().deleteClothe(
      clothesId,
    );
  }

  static Future<List<ClotheModel>> generateLaundry() async {
    Response response = await ClothesService.create().generateLaundry();
    List<ClotheModel> laundry = [];
    response.body["data"].forEach((clothe) {
      laundry.add(ClotheModel.fromJson(clothe));
    });
    Forest.info("Laundry: $laundry");
    return laundry;
  }

  static Future<void> toggleClothe(
    int clotheId,
  ) async {
    await ClothesService.create().toggleClothe(
      clotheId,
    );
  }

  static Future<void> updateClothe(
    int clotheId,
    String name,
    String material,
    String type,
    String colorway,
    List washingInstructions,
    int isInLaundry,
    String? picture,
  ) async {
    await ClothesService.create().updateClothe(
      clotheId,
      name,
      material,
      type,
      colorway,
      washingInstructions,
      isInLaundry,
      picture,
    );
  }
}
