import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';

  bool get isDark => themeMode == ThemeMode.dark;

  String get backgroundImage => themeMode == ThemeMode.light? 'backgroundimage.png' : 'dark_background.png' ;
    String get sebhaImage => themeMode == ThemeMode.light? 'tsbeeh.png' : 'sebha_dark.png' ;


  void changeTheme(ThemeMode selectedTheme) {
    themeMode = selectedTheme;
    notifyListeners();
  }

  void changeLanguage(String selectedLanguage) {
    languageCode = selectedLanguage;
    notifyListeners();
  }
}
