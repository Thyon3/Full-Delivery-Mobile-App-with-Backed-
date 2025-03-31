import 'package:flutter/material.dart';

import 'package:thydelivery_mobileapp/theme/dark_mode.dart';
import 'package:thydelivery_mobileapp/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  //getters
  bool get _isDarkMode => _themeData == darkMode;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
  }

  void toggleTheme() {
    if (_themeData == darkMode) {
      _themeData = lightMode;
    } else {
      _themeData = darkMode;
    }
  }
}
