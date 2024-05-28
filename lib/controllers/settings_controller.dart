import 'package:flutter/material.dart';
import 'package:lesson45/models/settings.dart';

class SettingsController with ChangeNotifier {
  final settings = Settings(themeMode: ThemeMode.system);

  void toggleThemeMode(bool isDark) {
    settings.themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
