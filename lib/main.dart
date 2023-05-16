import 'package:flutter/material.dart';
import 'package:food_panda_app/components/my_colors.dart';
import 'package:food_panda_app/splashScreen.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2.0,
          titleTextStyle: TextStyle(color: MyColors.blackColor),
          iconTheme: IconThemeData(color: MyColors.baseColor),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
