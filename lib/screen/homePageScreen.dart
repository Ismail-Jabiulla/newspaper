import 'package:flutter/material.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/screen/searchScreen.dart';
import '../all_kids/newsStory.dart';
import '../categorykid/allLatest.dart';
import '../categorykid/international.dart';
import '../categorykid/media.dart';
import '../categorykid/politics.dart';
import '../categorykid/sports.dart';
import '../categorykid/technology.dart';
import '../constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_controller.dart';
import '../constants/fonts_widgets.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'notificationScreen.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  final List<String> tabs = [
    'All',
    'Politics',
    'Technology',
    'Sports',
    'International',
    'Media'
  ];
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _scrollController = ScrollController();
    _tabController.addListener(() {
      _scrollController.animateTo(
        (_tabController.index * 200).toDouble(),
        // Adjust the height according to your needs
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      ///-------App Bar----------
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Column(
            children: [
              Container(
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
            ],
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(appImages.imageProfile),
                    fit: BoxFit.fill)),
          ),
        ),
        actions: [
          ///--------------Search-------------------
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                Future.delayed(Duration(milliseconds: 200));
              },
              icon: Icon(
                Icons.search,
                color: AppColors.colorBlackHighButton,
              )),
          ///-----------------Notifications-------------------
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                Future.delayed(Duration(milliseconds: 200));
              },
              icon: Icon(Icons.notifications,
                  color: AppColors.colorBlackHighButton)),
        ],
      ),
      body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[

              ///---------News Story------------
              SliverToBoxAdapter(
                child: NewsStories(),
              ),

              ///--------Carousel Slider with SliverApp Bar----------
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                    context),
                sliver: SliverAppBar(
                  expandedHeight: 250.0,
                  floating: false,
                  pinned: false,
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    background: CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 2000),
                        viewportFraction: 0.8,
                      ),
                      items: [

                        /// ------Carousel Slider 01---------
                        Container(
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
                                padding:
                                const EdgeInsets.only(top: 16.0, left: 8),
                                child: Text(
                                  'Analysis: As Israel escalates\n Gaza war,its ‘kill-rate’ \nclaims don’t add up',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          color: AppColors.colorText,
                                          fontWeight: FontWeights.Bold)),
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  //News Sub-title
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'The claims, aimed at\nfending off criticism over\n civilian casualties paint \na picture of the war \nthat makes no sense',
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: AppColors.colorText),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Icon(
                                    Icons.play_circle_filled_sharp,
                                    size: 70,
                                    color: AppColors.colorWhiteHighEmp,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '11.20 PM',
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.colorText)),
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// -------Carousel Slider 02----------
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(appImages.imageSlider02),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //News Title
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 16.0, left: 8),
                                child: Text(
                                  'Bangladesh rout Ireland for \nrecord victory in 1st ODI',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          color: AppColors.colorText,
                                          fontWeight: FontWeights.Bold)),
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  //News Sub-title
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Shakib hit 93, his \nthird straight half-century,\nand then added a wicket to\n contribute in the team’s victory.',
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: AppColors.colorText),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Icon(
                                    Icons.play_circle_filled_sharp,
                                    size: 70,
                                    color: AppColors.colorWhiteHighEmp,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '11.20 PM',
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.colorText)),
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// -------Carousel Slider 03-----------
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(appImages.imageSlider03),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //News Title
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 16.0, left: 8),
                                child: Text(
                                  'Massive development turns Rajshahi city green, beautiful',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          color: AppColors.colorText,
                                          fontWeight: FontWeights.Bold)),
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  //News Sub-title
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'RAJSHAHI, Jan 25, 2025 \n(BSS) - Rajshahi city has \nbecome green, beautiful and \nenlightened at present',
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            color: AppColors.colorText),
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Icon(
                                    Icons.play_circle_filled_sharp,
                                    size: 70,
                                    color: AppColors.colorWhiteHighEmp,
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '11.20 PM',
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.colorText)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },

          ///--------Tab Bar-------------
          body: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Column(
              children: [
              TabBar(controller: _tabController, isScrollable: true, tabs: [
            Tab(
            child: Text(
            'All',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Tab(
            child: Text(
              'Politics',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Tab(
            child: Text(
              'Technology',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Tab(
            child: Text(
              'Sports',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Tab(
            child: Text(
              'International',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          Tab(
            child: Text(
              'Media',
              style: TextStyle(color: Colors.black87),
            ),
          )
          ]),
      Expanded(
        child: TabBarView(controller: _tabController, children: [
          AllLatestKid(),
          PoliticsPage(),
          TechnologyPage(),
          sportsPage(),
          internationalPage(),
          mediaPage(),
        ]),
      ),
      ],
    ),)
    ,
    )
    ,
    );
  }
}
