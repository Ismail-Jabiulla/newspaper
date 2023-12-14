import 'package:flutter/material.dart';
import 'package:newspaper/demo.dart';
import 'package:newspaper/practice.dart';
import 'package:newspaper/screen/bottomNavigationScreen.dart';
import 'package:newspaper/screen/homePageScreen.dart';
import 'categorykid/politics.dart';
import 'onBoarding/onBordingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The News',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      ///link to Homepage Single view Onboarder to Homepage
      ///and onBoarder link to BottomNavigation
      routes: {
        '/': (context) => OnBoardingScreen(),
        '/homepage': (context) => BottomNavigationBarPage(),
      },
      // Initial route
      initialRoute: '/',
    );
  }
}