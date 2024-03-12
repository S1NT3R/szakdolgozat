import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:chore_champion/src/exception/exception_handler.dart';
import 'package:chore_champion/src/exception/exceptions/api/invalid_token_exception.dart';
import 'package:chore_champion/src/exception/exceptions/unknown_error_exception.dart';

class ExceptionInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    Map<String, dynamic> body;

    try {
      body = jsonDecode(response.bodyString);
    } catch (e) {
      log(response.bodyString);
      throw UnknownErrorException();
    }
    if (body["status"] != 200) {
      log(response.bodyString);
      if (body["message"] == null) {
        throw UnknownErrorException();
      }
      if (body["status"] == 401) {
        throw InvalidTokenException();
      }
      if (body["status"] == 404) {
        return response;
      }
      throw ExceptionHandler.convertCodeToException(body["message"]);
    }

    return response;
  }
}
