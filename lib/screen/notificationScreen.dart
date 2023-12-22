import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:newspaper/screen/searchScreen.dart';

import '../constants/colors.dart';
import '../constants/fonts_widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///--------AppBar-----------
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
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
              },
              icon: Icon(
                Icons.search,
                color: AppColors.colorBlackHighButton,
              )),
          IconButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
              },
              icon: Icon(Icons.notifications,
                  color: AppColors.colorBlackHighButton)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: [
            ///-----Notification and SearchBar---------
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notification',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeights.Bold)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                    },
                    icon: Icon(
                      Icons.search,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(appImages.imageProfile),
                    title: Text(
                      'Miller Alay liked a post you shared on your profile yesterday.',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12, fontWeight: FontWeights.Bold)),
                    ),
                    subtitle: Text('12.34 PM',style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 10,))),
                    trailing: BottomSheets_Bookmark02(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


///---------BottomSheets_Bookmark------------
class BottomSheets_Bookmark02 extends StatelessWidget {
  const BottomSheets_Bookmark02({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: AppColors.colorPrimary,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 250,
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
                    /// -------Remove from Notification-------
                    GestureDetector(
                      onTap: (){},
                      child: const ListTile(
                        leading: Icon(Icons.cancel,
                            color: AppColors.colorBlackHighButton),
                        title: Text('Remove this notification', style: TextStyle(
                            color: AppColors.colorBlackHighButton),),
                      ),
                    ),
                    ///----------Reports-----------
                    GestureDetector(
                      onTap: (){},
                      child: const ListTile(
                        leading: Icon(
                            Icons.report, color: AppColors.colorBlackHighButton),
                        title: Text('Report issue to Notifications Team', style: TextStyle(
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