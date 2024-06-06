// import 'package:darkthemeapp/services/themecolor.dart';
import 'package:newdarkthemeapp/services/themecolor.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final themeProvider = ThemeProvider();

  // ThemeProvider obj = ThemeProvider();

  // bool get isDarkMode => obj.isDarkMode;

  homeChangeFunction() {
    themeProvider.changeThemeMode();
    rebuildUi();
    // obj.changetoggleTheme();
    // rebuildUi();
  }
}
