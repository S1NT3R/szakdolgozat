import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/resources/handlers/token_handler.dart';
import 'package:forest_logger/forest_logger.dart';

class TokenInterceptor implements ResponseInterceptor, RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    String? token = await TokenHandler.getToken();
    Forest.debug(token ?? "asd");

    if (token != null) {
      if (token.isNotEmpty) {
        Map<String, String> headers = {};
        headers.addAll(
          request.headers,
        );
        headers.addEntries(
          [
            MapEntry(
              "authorization",
              "Bearer $token",
            ),
          ],
        );
        request = request.copyWith(
          headers: headers,
        );
      }
    }
    return request;
  }

  @override
  FutureOr<Response> onResponse(Response response) {
    if (response.statusCode == 401) {}
    return response;
  }
}
