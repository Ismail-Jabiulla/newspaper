import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import '../all_kids/carouselSlider.dart';
import '../categorykid/politics.dart';
import '../constants/colors.dart';
import '../constants/strings.dart';
import '../all_kids/liveNews.dart';
import '../all_kids/newsChip.dart';
import 'bottomNavigationScreen.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
              alignment: AlignmentDirectional.center,
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                color: AppColors.colorBlackHighButton,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    topLeft: Radius.circular(6)),
              ),
              child: Text(
                'The News',
                style: GoogleFonts.inter(
                    textStyle:
                        TextStyle(fontSize: 20, color: AppColors.colorText)),
              )),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(appImages.imageProfile),
                    fit: BoxFit.fill
              )
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: AppColors.colorBlackHighButton,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications,
                  color: AppColors.colorBlackHighButton)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LiveNews(),
            CarouselSlider(),
            NewsCategoriesChip(),
          ],
        ),
      ),
    );
  }

}

