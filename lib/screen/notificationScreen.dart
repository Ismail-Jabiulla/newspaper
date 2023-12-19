import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/constants/image_strings.dart';

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
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: AppColors.colorBlackHighButton,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
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
                    onPressed: () {},
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
                    trailing: IconButton(
                        onPressed: () {}, icon: Icon(Icons.more_horiz)),
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
