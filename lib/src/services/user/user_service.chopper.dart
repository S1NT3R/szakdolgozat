// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$UserService extends UserService {
  _$UserService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = UserService;

  @override
  Future<Response<dynamic>> login(
    String email,
    String password,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/login');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'email',
        email,
      ),
      PartValue<String>(
        'password',
        password,
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
  Future<Response<dynamic>> register(
    String name,
    String email,
    String password,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/register');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'name',
        name,
      ),
      PartValue<String>(
        'email',
        email,
      ),
      PartValue<String>(
        'password',
        password,
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
  Future<Response<dynamic>> logout() {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/logout');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getProfile() {
    final Uri $url = Uri.parse('https://localhost:8000/api/user');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> uploadAvatar(String? path) {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/upload-avatar');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<String?>(
        'avatar',
        path,
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
  Future<Response<dynamic>> deleteAvatar() {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/delete-avatar');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateUserDetails(String name) {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/update');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'name',
        name,
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
  Future<Response<dynamic>> updateStreak() {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/update-streak');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> changePassword(String password) {
    final Uri $url =
        Uri.parse('https://localhost:8000/api/user/change-password');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'password',
        password,
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
  Future<Response<dynamic>> deleteUser() {
    final Uri $url = Uri.parse('https://localhost:8000/api/user/delete');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
