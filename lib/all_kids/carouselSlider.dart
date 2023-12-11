import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({
    super.key,
  });

  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  final _controllerCarsousel = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 1,
            child: PageView.builder(
              itemCount: 4,
              padEnds: true,
              controller: _controllerCarsousel,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(appImages.imageSlider01),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        //News Title
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, left: 8),
                          child: Text(
                            'Analysis: As Israel escalates Gaza war, \nits ‘kill-rate’ claims don’t add up',
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 20,
                                    color: AppColors.colorText,
                                    fontWeight: FontWeights.Bold)),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //News Sub-title
                            Padding(
                              padding: const EdgeInsets.only( left: 8),
                              child: Text(
                                'The claims, aimed at\nfending off criticism over\n civilian casualties paint \na picture of the war \nthat makes no sense',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 16, color: AppColors.colorText),),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Icon(Icons.play_circle_filled_sharp, size: 80, color: AppColors.colorWhiteHighEmp,)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('11.20 PM', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12, color: AppColors.colorText)),),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _controllerCarsousel,
          count: 4,
          effect: WormEffect(
            activeDotColor: AppColors.colorBlackHighButton,
            dotHeight: 10,
            dotWidth: 10,
          ),
        )
      ],
    );
  }
}
