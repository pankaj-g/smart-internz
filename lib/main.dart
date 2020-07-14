import 'package:flutter/material.dart';
import 'package:smartinternz/screens/login_screen.dart';
import 'package:animated_splash/animated_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplash(
        imagePath: 'images/splash.jpg',
        home: LoginScreen(),
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}
