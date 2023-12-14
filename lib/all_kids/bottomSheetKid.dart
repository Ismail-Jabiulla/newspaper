
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../constants/fonts_widgets.dart';

class BottomSheetsPage extends StatelessWidget {
  const BottomSheetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            backgroundColor: AppColors.colorPrimary,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 400,
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
                    ListTile(
                      leading: Icon(
                          Icons.comment, color: AppColors.colorBlackHighButton),
                      title: Text('Comments', style: TextStyle(
                          color: AppColors.colorBlackHighButton),),
                    ),
                    ListTile(
                      leading: Icon(
                          Icons.share, color: AppColors.colorBlackHighButton),
                      title: Text('Share', style: TextStyle(
                          color: AppColors.colorBlackHighButton),),
                    ),
                    ListTile(
                      leading: Icon(Icons.bookmarks,
                          color: AppColors.colorBlackHighButton),
                      title: Text('Bookmark', style: TextStyle(
                          color: AppColors.colorBlackHighButton),),
                    ),
                    ListTile(
                      leading: Icon(
                          Icons.report, color: AppColors.colorBlackHighButton),
                      title: Text('Reports', style: TextStyle(
                          color: AppColors.colorBlackHighButton),),
                    ),
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