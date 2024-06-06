// import 'package:flutter/material.dart';

// class DarkModeModel extends ChangeNotifier {
//   bool _isDarkMode = false;

//   bool get isDarkMode => _isDarkMode;

//   void toggleDarkMode() {
//     _isDarkMode = !_isDarkMode;
//     notifyListeners();
//   }
// }
import 'package:flutter/material.dart';

class DarkModeModel extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleDarkMode() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  ThemeMode get currentTheme => _isDarkMode ? ThemeMode.dark : ThemeMode.light;
}
