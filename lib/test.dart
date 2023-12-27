import 'package:flutter/material.dart';
import 'package:newspaper/profile_screen/code_varification.dart';
import 'package:newspaper/profile_screen/complete_screen01.dart';
import 'package:newspaper/profile_screen/confirm_password.dart';
import 'package:newspaper/profile_screen/forget_password.dart';
import 'package:newspaper/profile_screen/sign_upscreen.dart';
import 'package:newspaper/profile_screen/signin_screen.dart';

import 'demo.dart';


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
     home:CompleteScreen01(),
      //ConfirmPasswordScreen(),
      //ForgetPasswordScreen(),
     //SignUpScreen(),
      //CodeVarificationScreen(),

    );
  }
}