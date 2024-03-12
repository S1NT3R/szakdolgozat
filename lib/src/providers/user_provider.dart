import 'package:chore_champion/src/exception/exception_handler.dart';
import 'package:chore_champion/src/models/user/user_model.dart';
import 'package:chore_champion/src/repositories/user_repository.dart';
import 'package:chore_champion/src/resources/handlers/token_handler.dart';
import 'package:chore_champion/src/resources/interfaces/loading_interface.dart';
import 'package:forest_logger/forest_logger.dart';

class UserProvider extends LoadingInterface {
  UserModel? userModel;
  bool isAuthenticated = false;

  UserProvider() {
    TokenHandler.getToken().then(
      (value) {
        if (value != null) {
          isAuthenticated = true;
          Forest.debug("Login token: $value");
        }
      },
    );
  }

  Future<Exception?> login(
    String email,
    String password,
  ) async {
    try {
      isLoading = true;
      await UserRepository.login(email, password);
      Forest.debug("Saved token: ${TokenHandler.cachedToken}");
      isAuthenticated = true;
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> logout() async {
    try {
      isLoading = true;
      await UserRepository.logout();
      userModel = null;
      isAuthenticated = false;
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> register(
    String name,
    String email,
    String password,
  ) async {
    try {
      isLoading = true;
      await UserRepository.register(
        name,
        email,
        password,
      );
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> getProfile() async {
    try {
      isLoading = true;
      userModel = await UserRepository.getProfile();
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      Forest.error(e.toString());
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> uploadAvatar(String? path) async {
    try {
      isLoading = true;
      await UserRepository.uploadAvatar(path);
      await getProfile();
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      Forest.error(e.toString());
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> deleteAvatar() async {
    try {
      isLoading = true;
      await UserRepository.deleteAvatar();
      await getProfile();
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      Forest.error(e.toString());
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> updateUserDetails(String name) async {
    try {
      isLoading = true;
      await UserRepository.updateUserDetails(name);
      await getProfile();
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      Forest.error(e.toString());
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> changePassword(String password) async {
    try {
      isLoading = true;
      await UserRepository.changePassword(password);
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      Forest.error(e.toString());
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> deleteUser() async {
    try {
      isLoading = true;
      await UserRepository.deleteUser();
      userModel = null;
      isLoading = false;
      return null;
    } catch (e) {
      isLoading = false;
      Forest.error(e.toString());
      return ExceptionHandler.returnException(e);
    }
  }
}
