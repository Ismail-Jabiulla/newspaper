// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:newspaper/constants/image_strings.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'categorykid/allLatest.dart';
// import 'categorykid/politics.dart';
// import 'constants/colors.dart';
// import 'constants/fonts_widgets.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
//   final List<String> tabs = ['All', 'Politics', 'Technology', 'Sports', 'International', 'Media'];
//   late TabController _tabController;
//   late ScrollController _scrollController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: tabs.length, vsync: this);
//     _scrollController = ScrollController();
//     _tabController.addListener(() {
//       _scrollController.animateTo(
//         (_tabController.index * 200).toDouble(), // Adjust the height according to your needs
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Center(
//           child: Container(
//               alignment: AlignmentDirectional.center,
//               height: 30,
//               width: 120,
//               decoration: BoxDecoration(
//                 color: AppColors.colorBlackHighButton,
//                 borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(6),
//                     topLeft: Radius.circular(6)),
//               ),
//               child: Text(
//                 'The News',
//                 style: GoogleFonts.inter(
//                     textStyle:
//                     TextStyle(fontSize: 20, color: AppColors.colorText)),
//               )),
//         ),
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child:
//           Container(
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 image: DecorationImage(
//                     image: AssetImage(appImages.imageProfile),
//                     fit: BoxFit.fill
//                 )
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.search,
//                 color: AppColors.colorBlackHighButton,
//               )),
//           IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.notifications,
//                   color: AppColors.colorBlackHighButton)),
//         ],
//       ),
//       body: NestedScrollView(
//         controller: _scrollController,
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           return <Widget>[
//             SliverOverlapAbsorber(
//               handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
//               sliver: SliverAppBar(
//                 expandedHeight: 300.0,
//                 floating: false,
//                 pinned: false,
//                 backgroundColor: Colors.white,
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: CarouselSlider(
//                     options: CarouselOptions(
//                       height: 200.0,
//                       enlargeCenterPage: true,
//                       autoPlay: true,
//                       aspectRatio: 16 / 9,
//                       autoPlayCurve: Curves.fastOutSlowIn,
//                       enableInfiniteScroll: true,
//                       autoPlayAnimationDuration: Duration(milliseconds: 2000),
//                       viewportFraction: 0.8,
//
//                     ),
//                     items: [
//                       /// Carousel Slider 01
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16),
//                           image: DecorationImage(
//                             image: AssetImage(appImages.imageSlider01),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             //News Title
//                             Padding(
//                               padding: const EdgeInsets.only(top: 16.0, left: 8),
//                               child: Text(
//                                 'Analysis: As Israel escalates Gaza war, \nits ‘kill-rate’ claims don’t add up',
//                                 style: GoogleFonts.inter(
//                                     textStyle: const TextStyle(
//                                         fontSize: 20,
//                                         color: AppColors.colorText,
//                                         fontWeight: FontWeights.Bold)),
//                               ),
//                             ),
//
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 //News Sub-title
//                                 Padding(
//                                   padding: const EdgeInsets.only( left: 8),
//                                   child: Text(
//                                     'The claims, aimed at\nfending off criticism over\n civilian casualties paint \na picture of the war \nthat makes no sense',
//                                     style: GoogleFonts.inter(
//                                       textStyle: const TextStyle(
//                                           fontSize: 16, color: AppColors.colorText),),
//                                     overflow: TextOverflow.ellipsis,
//                                     maxLines: 2,
//                                   ),
//                                 ),
//                                 Icon(Icons.play_circle_filled_sharp, size: 70, color: AppColors.colorWhiteHighEmp,)
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Text('11.20 PM', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12, color: AppColors.colorText)),),
//                             ),
//                           ],
//                         ),
//                       ),
//                       /// Carousel Slider 02
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16),
//                           image: DecorationImage(
//                             image: AssetImage(appImages.imageSlider02),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             //News Title
//                             Padding(
//                               padding: const EdgeInsets.only(top: 16.0, left: 8),
//                               child: Text(
//                                 'Bangladesh rout Ireland for \nrecord victory in 1st ODI',
//                                 style: GoogleFonts.inter(
//                                     textStyle: const TextStyle(
//                                         fontSize: 20,
//                                         color: AppColors.colorText,
//                                         fontWeight: FontWeights.Bold)),
//                               ),
//                             ),
//
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 //News Sub-title
//                                 Padding(
//                                   padding: const EdgeInsets.only( left: 8),
//                                   child: Text(
//                                     'Shakib hit 93, his \nthird straight half-century,\nand then added a wicket to\n contribute in the team’s victory.',
//                                     style: GoogleFonts.inter(
//                                       textStyle: const TextStyle(
//                                           fontSize: 16, color: AppColors.colorText),),
//                                     overflow: TextOverflow.ellipsis,
//                                     maxLines: 2,
//                                   ),
//                                 ),
//                                 Icon(Icons.play_circle_filled_sharp, size: 70, color: AppColors.colorWhiteHighEmp,)
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Text('11.20 PM', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12, color: AppColors.colorText)),),
//                             ),
//                           ],
//                         ),
//                       ),
//                       /// Carousel Slider 03
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16),
//                           image: DecorationImage(
//                             image: AssetImage(appImages.imageSlider03),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                             //News Title
//                             Padding(
//                               padding: const EdgeInsets.only(top: 16.0, left: 8),
//                               child: Text(
//                                 'Massive development turns Rajshahi city green, beautiful',
//                                 style: GoogleFonts.inter(
//                                     textStyle: const TextStyle(
//                                         fontSize: 20,
//                                         color: AppColors.colorText,
//                                         fontWeight: FontWeights.Bold)),
//                               ),
//                             ),
//
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 //News Sub-title
//                                 Padding(
//                                   padding: const EdgeInsets.only( left: 8),
//                                   child: Text(
//                                     'RAJSHAHI, Jan 25, 2025 \n(BSS) - Rajshahi city has \nbecome green, beautiful and \nenlightened at present',
//                                     style: GoogleFonts.inter(
//                                       textStyle: const TextStyle(
//                                           fontSize: 16, color: AppColors.colorText),),
//                                     overflow: TextOverflow.ellipsis,
//                                     maxLines: 2,
//                                   ),
//                                 ),
//                                 Icon(Icons.play_circle_filled_sharp, size: 70, color: AppColors.colorWhiteHighEmp,)
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Text('11.20 PM', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12, color: AppColors.colorText)),),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ];
//         },
//         body: Padding(
//           padding: const EdgeInsets.only(top:0.0),
//           child: Column(
//             children: [
//               TabBar(
//                   controller: _tabController,
//                   isScrollable: true,
//                   tabs:
//               [
//                 Tab(child: Text('All', style: TextStyle(color: Colors.black87),),),
//                 Tab(child: Text('Politics', style: TextStyle(color: Colors.black87),),),
//                 Tab(child: Text('Technology', style: TextStyle(color: Colors.black87),),),
//                 Tab(child: Text('Sports', style: TextStyle(color: Colors.black87),),),
//                 Tab(child: Text('International', style: TextStyle(color: Colors.black87),),),
//                 Tab(child: Text('Media', style: TextStyle(color: Colors.black87),),)
//               ]),
//               Expanded(
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: [
//                     AllLatestKid(),
//                     PoliticsPage(),
//                     AllLatestKid(),
//                     AllLatestKid(),
//                     AllLatestKid(),
//                     AllLatestKid(),
//                   ]
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

enum Gender { Male, Female, Other }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Gender _selectedGender = Gender.Male; // Default gender

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // Handle name changes
                },
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<Gender>(
                value: _selectedGender,
                onChanged: (newValue) {
                  setState(() {
                    _selectedGender = newValue!;
                  });
                },
                items: Gender.values.map((Gender gender) {
                  return DropdownMenuItem<Gender>(
                    value: gender,
                    child: Text(gender.toString().split('.').last),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle saving profile changes
                },
                child: Text('Save Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
