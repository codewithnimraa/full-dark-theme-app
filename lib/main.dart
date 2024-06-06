// import 'package:flutter/material.dart';
// import 'package:newdarkthemeapp/routes/homepage.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FirstScr(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:newdarkthemeapp/screens/home_view.dart';
import 'package:provider/provider.dart';
import 'package:newdarkthemeapp/routes/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => DarkModeModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeModel>(
      builder: (context, darkModeModel, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.pink,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
          ),
          themeMode: darkModeModel.currentTheme,
          home: const HomeView(),
        );
      },
    );
  }
}
