import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/models/user/user_model.dart';
import 'package:chore_champion/src/resources/handlers/token_handler.dart';
import 'package:chore_champion/src/services/user/user_service.dart';
import 'package:forest_logger/forest_logger.dart';

class UserRepository {
  static Future<void> login(String email, String password) async {
    Response response = await UserService.create().login(
      email,
      password,
    );

    String? token = response.body["data"]["token"];
    if (token == null) {
      throw UnimplementedError();
    }
    await TokenHandler.persistToken(token);
  }

  static Future<void> logout() async {
    await UserService.create().logout();
    await TokenHandler.deleteToken();
  }

  static Future<void> register(
      String name, String email, String password) async {
    await UserService.create().register(
      name,
      email,
      password,
    );
  }

  static Future<UserModel> getProfile() async {
    Response response = await UserService.create().getProfile();
    UserModel userModel = UserModel.fromJson(response.body["data"]);
    Forest.info("UserModel: $userModel");
    return userModel;
  }

  static Future<void> uploadAvatar(String? path) async {
    await UserService.create().uploadAvatar(path);
  }

  static Future<void> updateStreak() async {
    await UserService.create().updateStreak();
  }

  static Future<void> deleteAvatar() async {
    await UserService.create().deleteAvatar();
  }

  static Future<void> updateUserDetails(String name) async {
    await UserService.create().updateUserDetails(name);
  }

  static Future<void> changePassword(String password) async {
    await UserService.create().changePassword(password);
  }

  static Future<void> deleteUser() async {
    await UserService.create().deleteUser();
  }
}
