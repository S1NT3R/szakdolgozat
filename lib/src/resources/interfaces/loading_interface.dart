import 'package:flutter/material.dart';
import 'package:forest_logger/forest_logger.dart';

class LoadingInterface with ChangeNotifier {
  bool _isLoading = false;
  bool _isSecondLoading = false;
  bool get isLoading {
    return _isLoading;
  }

  set isLoading(value) {
    _isLoading = value;
    Forest.success('Notify listeners notified.');
    notifyListeners();
  }

  bool get isSecondLoading {
    return _isSecondLoading;
  }

  set isSecondLoading(value) {
    _isSecondLoading = value;
    Forest.success('Notify listeners notified.');
    notifyListeners();
  }
}
