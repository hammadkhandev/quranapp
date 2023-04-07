import 'package:flutter/material.dart';
import 'package:quranapp/Screens/splashScreen.dart';
import 'package:quranapp/Utilities/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: kGoldenColor,
      ),
      home: SplashScreen(),
    );
  }
}
