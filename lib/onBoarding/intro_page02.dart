import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:newspaper/constants/strings.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro_Page02 extends StatelessWidget {
  const Intro_Page02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                appImages.onBoardingImage02
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 150),
              child: Container(
                height: 30,
                width: 113,
                decoration: BoxDecoration(
                    color: AppColors.colorBlackHighButton,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(6), topLeft: Radius.circular(6))
                ),
                alignment: AlignmentDirectional.center,
                child: Text(
                  appName,
                  style: GoogleFonts.breeSerif(textStyle: TextStyle(color: AppColors.colorText)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,bottom: 150.0, right: 16.0),
              child: Container(
                alignment: AlignmentDirectional.bottomCenter,
                child: Text(
                  onBoardingtext,
                  style: TextStyle(color: AppColors.colorText2),
                ),
              ),
            ),
          ],
        ));
  }
}
