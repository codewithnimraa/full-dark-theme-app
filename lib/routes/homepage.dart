import 'package:flutter/material.dart';
import 'package:newdarkthemeapp/components/animated_toggle_button.dart';
import 'package:newdarkthemeapp/model/theme_color.dart';
import 'package:newdarkthemeapp/routes/provider.dart';
import 'package:newdarkthemeapp/screens/home_view.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  ThemeColor lightMode = ThemeColor(
    gradient: [
      const Color(0xDDFF0080),
      const Color(0xDDFF8C00),
    ],
    backgroundColor: const Color(0xFFFFFFFF),
    textColor: const Color(0xFF000000),
    toggleButtonColor: const Color(0xFFFFFFFF),
    toggleBackgroundColor: const Color(0xFFe7e7e8),
    shadow: const [
      BoxShadow(
        color: Color(0xFFd8d7da),
        spreadRadius: 5,
        blurRadius: 10,
        offset: Offset(0, 5),
      ),
    ],
  );

  ThemeColor darkMode = ThemeColor(
    gradient: [
      const Color(0xFF8983F7),
      const Color(0xFFA3DAFB),
    ],
    backgroundColor: const Color(0xFF26242e),
    textColor: const Color(0xFFFFFFFF),
    toggleButtonColor: const Color(0xFf34323d),
    toggleBackgroundColor: const Color(0xFF222029),
    shadow: const <BoxShadow>[
      BoxShadow(
        color: Color(0x66000000),
        spreadRadius: 5,
        blurRadius: 10,
        offset: Offset(0, 5),
      ),
    ],
  );

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    super.initState();
  }

  changeThemeMode() {
    final darkModeModel = Provider.of<DarkModeModel>(context, listen: false);
    if (darkModeModel.isDarkMode) {
      _animationController.forward(from: 0.0);
    } else {
      _animationController.reverse(from: 1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final darkModeModel = Provider.of<DarkModeModel>(context);
    bool isDarkMode = darkModeModel.isDarkMode;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:
          isDarkMode ? darkMode.backgroundColor : lightMode.backgroundColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: height * 0.1),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: width * 0.35,
                    height: width * 0.35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors:
                            isDarkMode ? darkMode.gradient : lightMode.gradient,
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(40, 0),
                    child: ScaleTransition(
                      scale: _animationController.drive(
                        Tween<double>(begin: 0.0, end: 1.0).chain(
                          CurveTween(curve: Curves.decelerate),
                        ),
                      ),
                      alignment: Alignment.topRight,
                      child: Container(
                        width: width * 0.26,
                        height: width * 0.26,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDarkMode
                              ? darkMode.backgroundColor
                              : lightMode.backgroundColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                'Choose a Theme',
                style: TextStyle(
                  color: isDarkMode ? darkMode.textColor : lightMode.textColor,
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                width: width * 0.7,
                child: Text(
                  ' Day or night.',
                  style: TextStyle(
                    color:
                        isDarkMode ? darkMode.textColor : lightMode.textColor,
                    fontSize: width * 0.04,
                    fontFamily: 'Rubik',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              AnimatedToggle(
                values: const ['Light', 'Dark'],
                textColor:
                    isDarkMode ? darkMode.textColor : lightMode.textColor,
                backgroundColor: isDarkMode
                    ? darkMode.toggleBackgroundColor
                    : lightMode.toggleBackgroundColor,
                buttonColor: isDarkMode
                    ? darkMode.toggleButtonColor
                    : lightMode.toggleButtonColor,
                shadows: isDarkMode ? darkMode.shadow : lightMode.shadow,
                onToggleCallback: (index) {
                  darkModeModel.toggleDarkMode();
                  changeThemeMode();
                },
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => HomeView()));
                },
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: !isDarkMode
                      ? darkMode.backgroundColor
                      : lightMode.backgroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
