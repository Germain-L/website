import 'package:flutter/cupertino.dart';

class ThemeSwitcher with ChangeNotifier {
  bool isLightTheme = false;

  void changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }
}