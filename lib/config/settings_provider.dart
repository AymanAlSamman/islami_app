import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentTheme = ThemeMode.light;

  changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  String getBackGround() {
    return currentTheme == ThemeMode.dark
        ? "assets/images/dark_main_background.png"
        : "assets/images/main_background.png";
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
