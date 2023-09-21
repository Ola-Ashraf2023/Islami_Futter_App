import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.dark;

  changeTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }
}
