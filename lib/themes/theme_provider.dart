import 'package:flutter/material.dart';
import '../../themes/dark_mode.dart';
import '../../themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // Inizialmente, light mode
  ThemeData _themeData = lightMode;

  // Get theme
  ThemeData get themeData => _themeData;

  // is dark mode
  bool get isDarkMode => _themeData == darkmode;

  // Set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // Aggiorna UI
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkmode;
    } else {
      themeData = lightMode;
    }
  }
}
