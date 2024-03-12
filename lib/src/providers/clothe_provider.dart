import 'package:chore_champion/src/exception/exception_handler.dart';
import 'package:chore_champion/src/models/clothe/clothe_model.dart';
import 'package:chore_champion/src/repositories/clothe_repository.dart';
import 'package:chore_champion/src/resources/interfaces/loading_interface.dart';
import 'package:forest_logger/forest_logger.dart';

class ClotheProvider extends LoadingInterface {
  List<ClotheModel> clothes = [];
  List<ClotheModel> laundry = [];

  Future<void> getClothes() async {
    try {
      isLoading = true;
      clothes = await ClotheRepository.getClothes();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error getting clothes: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> addClothe(
    String name,
    String material,
    String type,
    String colorway,
    List washingInstructions,
    int isInLaundry,
    String? picture,
  ) async {
    try {
      isLoading = true;
      await ClotheRepository.addClothe(
        name,
        material,
        type,
        colorway,
        washingInstructions,
        isInLaundry,
        picture,
      );
      await getClothes();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error adding clothe: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> deleteClothe(
    int clothesId,
  ) async {
    try {
      isLoading = true;
      await ClotheRepository.deleteClothe(
        clothesId,
      );
      await getClothes();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error deleting clothe: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> generateLaundry() async {
    try {
      isLoading = true;
      laundry = await ClotheRepository.generateLaundry();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error generating laundry: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> toggleClothe(
    int clotheId,
  ) async {
    try {
      isLoading = true;
      await ClotheRepository.toggleClothe(
        clotheId,
      );
      await getClothes();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error toggling clothe: $e");
      ExceptionHandler.returnException(e);
    }
  }

  Future<void> updateClothe(
    int clotheId,
    String name,
    String material,
    String type,
    String colorway,
    List washingInstructions,
    int isInLaundry,
    String? picture,
  ) async {
    try {
      isLoading = true;
      await ClotheRepository.updateClothe(
        clotheId,
        name,
        material,
        type,
        colorway,
        washingInstructions,
        isInLaundry,
        picture,
      );
      await getClothes();
      isLoading = false;
    } catch (e) {
      isLoading = false;
      Forest.error("Error updating clothe: $e");
      ExceptionHandler.returnException(e);
    }
  }

  void logout() {
    clothes = [];
    laundry = [];
  }
}
