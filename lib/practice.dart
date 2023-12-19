import 'package:flutter/material.dart';
import 'package:newspaper/screen/bookmarkScreen.dart';
import 'package:newspaper/screen/detailNewsScreen.dart';
import 'package:newspaper/screen/notificationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The News',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
     home: NotificationScreen(),
      // BookmarkScreen(),
    );
  }
}