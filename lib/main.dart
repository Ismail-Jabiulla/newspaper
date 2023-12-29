import 'package:flutter/material.dart';
import 'package:newspaper/profile_screen/profile_screen.dart';
import 'package:newspaper/screen/bottomNavigationScreen.dart';
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
        '/profile': (context) => ProfileScreen(),
      },
      // Initial route
      initialRoute: '/',
    );
  }
}