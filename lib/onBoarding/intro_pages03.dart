import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import '../Categorykid/categorylist.dart';
import '../constants/strings.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro_Page03 extends StatelessWidget {
  Intro_Page03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorPrimary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 150),
              child: Container(
                height: 30,
                width: 113,
                decoration: BoxDecoration(
                    color: AppColors.colorBlackHighButton,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(6),
                        topLeft: Radius.circular(6))),
                alignment: AlignmentDirectional.center,
                child: Text(
                  appName,
                  style: GoogleFonts.breeSerif(textStyle: TextStyle(color: AppColors.colorText)),
                ),
              ),
            ),

            //Select Categories
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      selectCategoriestxt,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(selectSubCategoriestxt,
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  ),
                ],
              ),
            ),

            //Categories
            CategoriesList(),
          ],
        ),
      ),
    );
  }

}
