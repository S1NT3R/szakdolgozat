import 'package:flutter/material.dart';

class ValidatorHelper {
  static FormFieldValidator<T> phoneNumber<T>({
    String? value,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      RegExp phoneNumberRegex = RegExp(
          r'^[\+]?[0-9]{2}[(]?[0-9]{2}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$');

      if (phoneNumberRegex
          .hasMatch(valueCandidate.toString().replaceAll(' ', ''))) {
        return null;
      } else {
        return errorText;
      }
    };
  }

  static FormFieldValidator<T> zipCode<T>({
    String? value,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      RegExp zipCodeRegex = RegExp(r'^[0-9]{4}$$');

      if (zipCodeRegex.hasMatch(valueCandidate.toString())) {
        return null;
      } else {
        return errorText;
      }
    };
  }

  static FormFieldValidator<T> taxNumber<T>({
    String? value,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      RegExp phoneNumberRegex = RegExp(r'^[0-9]{8}[-]?[0-9][-]?[0-9]{2}$');

      if (phoneNumberRegex.hasMatch(valueCandidate.toString())) {
        return null;
      } else {
        return errorText;
      }
    };
  }

  static FormFieldValidator<T> minOneNumber<T>({
    String? value,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      RegExp phoneNumberRegex = RegExp(r'^(?=.*?[0-9]).{1,}$');

      if (phoneNumberRegex.hasMatch(valueCandidate.toString())) {
        return null;
      } else {
        return errorText;
      }
    };
  }

  static FormFieldValidator<T> minOneUppercaseCharacter<T>({
    String? value,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      RegExp phoneNumberRegex = RegExp(r'^(?=.*?[A-Z]).{1,}$');

      if (phoneNumberRegex.hasMatch(valueCandidate.toString())) {
        return null;
      } else {
        return errorText;
      }
    };
  }

  static FormFieldValidator<T> minOneLowercaseCharacter<T>({
    String? value,
    String? errorText,
  }) {
    return (T? valueCandidate) {
      RegExp phoneNumberRegex = RegExp(r'^(?=.*?[a-z]).{1,}$');

      if (phoneNumberRegex.hasMatch(valueCandidate.toString())) {
        return null;
      } else {
        return errorText;
      }
    };
  }

  /// [FormFieldValidator] that requires the field have a non-empty value.
  static FormFieldValidator<T> required<T>({
    String? errorText,
  }) {
    return (T? valueCandidate) {
      if (valueCandidate == null ||
          (valueCandidate is String && valueCandidate.trim().isEmpty) ||
          (valueCandidate is Iterable && valueCandidate.isEmpty) ||
          (valueCandidate is Map && valueCandidate.isEmpty)) {
        if (errorText != null) {
          return errorText;
        } else {
          return null;
        }
      }
      return null;
    };
  }

  /// [FormFieldValidator] that requires the length of the field's value to be
  /// greater than or equal to the provided minimum length.
  static FormFieldValidator<T> minLength<T>(
    int minLength, {
    bool allowEmpty = false,
    String? errorText,
  }) {
    assert(minLength > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate == null);
      var valueLength = 0;
      if (valueCandidate is String) valueLength = valueCandidate.length;
      if (valueCandidate is Iterable) valueLength = valueCandidate.length;
      return valueLength < minLength && (!allowEmpty || valueLength > 0)
          ? errorText
          : null;
    };
  }

  /// [FormFieldValidator] that requires the length of the field's value to be
  /// less than or equal to the provided maximum length.
  static FormFieldValidator<T> maxLength<T>(
    int maxLength, {
    String? errorText,
  }) {
    assert(maxLength > 0);
    return (T? valueCandidate) {
      assert(valueCandidate is String ||
          valueCandidate is Iterable ||
          valueCandidate == null);
      int valueLength = 0;
      if (valueCandidate is String) valueLength = valueCandidate.length;
      if (valueCandidate is Iterable) valueLength = valueCandidate.length;
      return null != valueCandidate && valueLength > maxLength
          ? errorText
          : null;
    };
  }
}
