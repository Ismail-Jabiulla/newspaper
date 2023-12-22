import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/screen/searchScreen.dart';
import '../all_kids/bottomSheetKid.dart';
import '../constants/colors.dart';
import 'package:newspaper/constants/image_strings.dart';
import '../constants/fonts_widgets.dart';
import 'notificationScreen.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///------------App Bar----------
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
                        textStyle: TextStyle(
                            fontSize: 20, color: AppColors.colorText)),
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
          ///-------------Search-----------------------
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
              },
              icon: Icon(
                Icons.search,
                color: AppColors.colorBlackHighButton,
              )),
          ///---------------Notifications-------------------
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
              },
              icon: Icon(Icons.notifications,
                  color: AppColors.colorBlackHighButton)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.61,
            ),
            itemCount: 20,
            itemBuilder: (BuildContext context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.colorGreyLightest,
                ),
                child: Column(
                  children: [
                    ///----------Title----------------
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

                    ///--------Sub-Title---------
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
                    ///-------------images----------------
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
                    ///----------------Time------------------
                    Padding(
                      padding: const EdgeInsets.only( top: 16,
                          left: 8.0, right: 8.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('12.13 AM'),
                          BottomSheets_Bookmark(),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle_filled_sharp,
                          size: 44,
                          color: AppColors.colorBlackHighButton,
                        ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}

///---------BottomSheets_Bookmark------------
class BottomSheets_Bookmark extends StatelessWidget {
  const BottomSheets_Bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: AppColors.colorPrimary,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                      child: Center(
                        child: Container(
                          height: 5,
                          width: 100,
                          decoration: BoxDecoration(
                              color: AppColors.colorGreyDark,
                              borderRadius: BorderRadius.circular(12)
                          ),

                        ),
                      ),
                    ),
                    /// -------Remove from Bookmark-------
                    GestureDetector(
                      onTap: (){},
                      child: const ListTile(
                        leading: Icon(Icons.bookmarks,
                            color: AppColors.colorBlackHighButton),
                        title: Text('Remove Bookmark', style: TextStyle(
                            color: AppColors.colorBlackHighButton),),
                      ),
                    ),
                    ///-----------Share--------------
                    GestureDetector(
                      onTap: (){},
                      child: const ListTile(
                        leading: Icon(
                            Icons.share, color: AppColors.colorBlackHighButton),
                        title: Text('Share', style: TextStyle(
                            color: AppColors.colorBlackHighButton),),
                      ),
                    ),
                    ///----------Reports-----------
                    GestureDetector(
                      onTap: (){},
                      child: const ListTile(
                        leading: Icon(
                            Icons.report, color: AppColors.colorBlackHighButton),
                        title: Text('Reports', style: TextStyle(
                            color: AppColors.colorBlackHighButton),),
                      ),
                    ),
                    ///--------Close Button------------
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 328,
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.colorBlackHighButton,
                          ),
                          child: Text('Close', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeights.SemiBold, color: AppColors.colorText)),),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
        );
      },
      child: Icon(
        Icons.more_horiz,
        size: 24,
      ),
    );
  }
}