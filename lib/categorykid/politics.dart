import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../all_kids/bottomSheetKid.dart';
import '../podcast/podcast_player.dart';
import '../screen/bottomNavigationScreen.dart';

class PoliticsPage extends StatelessWidget {
  const PoliticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest',
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontWeight: FontWeights.SemiBold, fontSize: 20)),
                  ),
                  GestureDetector(onTap: () {
                    print('View All');
                  }, child: Text('All View')),
                ],
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
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
                                'assets/images/BPAC_Main.png',
                                height: 80,
                                width: 102,
                              )),
                          title: Text(
                            'Good Political Leadership | Importance of Political Leader| B.PAC',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontWeight: FontWeights.SemiBold),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'The world is brimming with ambitious political leaders, but sadly very few matchups to the traits of good leadership. ',
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PosdcastPlayer()));
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
                          child: Text('10.14 PM'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

