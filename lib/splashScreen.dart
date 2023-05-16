import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_app/components/my_colors.dart';
import 'package:food_panda_app/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key,}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.baseColor,
      body: Stack(
        alignment: Alignment.center,
        children: const [
          Image(image: AssetImage('assets/splash.png'),),
          Positioned(
              bottom: 70,
              child: CupertinoActivityIndicator(
                color: Colors.black,
                radius: 30.0,
              )),
        ],
      ),
    );
  }
}
