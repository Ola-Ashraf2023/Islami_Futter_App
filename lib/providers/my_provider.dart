import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;

  changeTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }
}
