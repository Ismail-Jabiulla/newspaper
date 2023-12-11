import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screen/homePageScreen.dart';
import 'intro_page01.dart';
import 'intro_page02.dart';
import 'intro_pages03.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController _controller = PageController();
  bool onlastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onlastPage = (index == 2);
              });
            },
            children: [
              Intro_Page01(),
              Intro_Page02(),
              Intro_Page03(),
            ],
          ),

          //Continue Button
          Container(
            alignment: Alignment(0, 0.60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(controller: _controller, count: 3),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //add Skip Button here
                      onlastPage?
                      GestureDetector(
                        onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePageScreen()));
                            _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        },
                        child: Container(
                          height: 82,
                          width: 300,
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                              color: AppColors.colorBlackHighButton,
                              borderRadius: BorderRadius.circular(100)),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                color: AppColors.colorText, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ) : GestureDetector(
                        onTap: () {
                          _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        },
                        child: Container(
                          height: 82,
                          width: 300,
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                              color: AppColors.colorBlackHighButton,
                              borderRadius: BorderRadius.circular(100)),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                color: AppColors.colorText, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
