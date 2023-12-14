
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../all_kids/bottomSheetKid.dart';

class mediaPage extends StatelessWidget {
  const mediaPage({super.key});

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
              itemCount: 15,
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
                                'assets/images/moneyHeist.jpg',
                                height: 80,
                                width: 102,
                              )),
                          title: Text(
                            'Money Heist: Korea is a winner as it follows the original Spanish template but adds K-culture exotica to it',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontWeight: FontWeights.SemiBold),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              '''
                            Money Heist: Korea is a winner as it follows the original Spanish template but adds K-culture exotica to it
                              There’s political commentary, too, as socio-economics of the capitalist South mixes with that of the North, officially a socialist state.
                              Vinayak Chakravorty July 01, 2022 11:43:22 IST
                            Money Heist: Korea is a winner as it follows the original Spanish template but adds K-culture exotica to it
                            Bollywood filmmakers obsessed with remakes need to watch Money Heist: Korea. The show is a textbook on how to go about retelling popular content with near scene-for-scene faithfulness and yet add enough local flavour to render the storyline an original cultural context.''',
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

