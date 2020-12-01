import 'package:flutter/material.dart';

class GlobalProvider extends ChangeNotifier {
  static GlobalProvider _instance;
  factory GlobalProvider() => _instance ??= GlobalProvider._();
  GlobalProvider._();

  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
