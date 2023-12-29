import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/image_strings.dart';
import '../all_kids/bottomSheetKid.dart';
import '../constants/colors.dart';
import '../constants/fonts_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../podcast/podcast_player.dart';
import '../screen/bottomNavigationScreen.dart';

class AllLatestKid extends StatefulWidget {
  const AllLatestKid({super.key});

  @override
  State<AllLatestKid> createState() => _AllLatestKidState();
}

class _AllLatestKidState extends State<AllLatestKid> {
  bool showMore = false;

  void toggleShowMore() {
    setState(() {
      showMore = !showMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SingleChildScrollView(
        child: Column(
          // shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            ///--------- politics Section-------------
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Politics',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontWeight: FontWeights.SemiBold, fontSize: 20)),
                  ),
                  GestureDetector(
                      onTap: () {
                      },
                      child: Text('All View')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 8.0, right: 8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.61,
                ),
                itemCount: showMore ? 10 : 2,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.colorGreyLightest,
                    ),
                    child: Column(
                      children: [
                        //Title
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16.0, left: 16.0, right: 16.0),
                          child: Text(
                            'Can US visa bans deter West Bank violence by Israeli settlers?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeights.Bold,
                                    color: AppColors.colorBlackIcon)),
                          ),
                        ),

                        //Sub-Title
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 16.0, right: 16.0),
                          child: Text(
                            'Hours after the announcement, Israeli Defence Minister Yoav Gallant said at a news conference: “There is, sadly, violence from extremists that we must condemn,” while many American officials have called on Israel to implement stricter measures against such incidents.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeights.SemiBold,
                                    color: AppColors.colorBlackIcon)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                appImages.imageAllnewspolitics,
                                height: 100,
                                width: 180,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( top: 16,
                            left: 8.0, right: 8.0
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('12.13 AM'),
                              BottomSheetsPage(),
                            ],
                          ),
                        ),
                        ///----------------media--------------------
                        IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PosdcastPlayer()));
                            },
                            icon: Icon(
                              Icons.play_circle_filled_sharp,
                              size: 44,
                              color: AppColors.colorBlackHighButton,
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
            ///------Politics SeeMore Button------------
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    toggleShowMore();
                  },
                  child: Container(
                    height: 23,
                    width: 78,
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                        color: AppColors.colorBlackHighButton,
                        borderRadius: BorderRadius.circular(4)),
                    child: Text(
                      showMore ? 'See less' : 'See more',
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeights.Bold,
                              color: AppColors.colorText)),
                    ),
                  ),
                ),
              ),
            ),
            ///-------Sports News ------------------
            SportNews(),
            ///--------Technology News -------------
            TechnologyNews()

          ],
        ),
      ),
    );
  }
}




///------------Sports News-----------------
class SportNews extends StatefulWidget {
  const SportNews({super.key});

  @override
  State<SportNews> createState() => _SportNewsState();
}

class _SportNewsState extends State<SportNews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///---------------politics Section----------------
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sports',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontWeight: FontWeights.SemiBold, fontSize: 20)),
                ),
                GestureDetector(
                    onTap: () {
                    },
                    child: Text('All View')),
              ],
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 112,
                  width: 328,
                  decoration: BoxDecoration(
                      color: AppColors.colorGreyLightest,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(8),
                            child: Image.asset(
                              'assets/images/sportsBangladesh.jpg',
                              height: 80,
                              width: 102,
                            )),
                        title: Text(
                          'Bangladesh began World Cup campaign against Afghanistan',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(fontWeight: FontWeights.SemiBold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '''Defending champion England and New Zealand are set to face each other in the tournament opener on October 5 at the Narendra Modi Stadium in Ahmedabad. 
                                The 13th edition of the ICC Cricket World Cup’s schedule has been released which will be hosted by India between October 5 to November 19. ''',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //threeDots
                            BottomSheetsPage(),
                            GestureDetector(
                                onTap: () {
                                  print('Play');
                                },
                                child: Icon(
                                  Icons.play_circle,
                                  size: 32,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 136.0),
                        child: Text('9.26 PM'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}


///----------------Technology---------------------
class TechnologyNews extends StatefulWidget {
  const TechnologyNews({super.key});

  @override
  State<TechnologyNews> createState() => _TechnologyNewsState();
}

class _TechnologyNewsState extends State<TechnologyNews> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///------------------Technology Section------------------------
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Technology',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontWeight: FontWeights.SemiBold, fontSize: 20)),
                ),
                GestureDetector(
                    onTap: () {
                    },
                    child: Text('All View')),
              ],
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                child: Container(
                  alignment: AlignmentDirectional.center,
                  height: 112,
                  width: 328,
                  decoration: BoxDecoration(
                      color: AppColors.colorGreyLightest,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(8),
                            child: Image.asset(
                              'assets/images/Robots.jpg',
                              height: 80,
                              width: 102,
                            )),
                        title: Text(
                          'Manchester launches centre to design AI-enhanced robots for real world applications',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(fontWeight: FontWeights.SemiBold),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '''A new centre of excellence dedicated to designing the next generation of robots supported with state-of-the-art AI technologies has been launched at The University of Manchester.''',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            //threeDots
                            BottomSheetsPage(),
                            GestureDetector(
                                onTap: () {
                                  print('Play');
                                },
                                child: Icon(
                                  Icons.play_circle,
                                  size: 32,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 136.0),
                        child: Text('9.26 PM'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

