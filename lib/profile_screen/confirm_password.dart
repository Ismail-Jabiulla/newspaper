import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/profile_screen/signin_screen.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ///--------------background and text----------------
            Padding(
              padding: const EdgeInsets.only(top: 80.0, left: 16,),
              child: Container(
                alignment: AlignmentDirectional.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Reset password',
                      style: GoogleFonts.barlow(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeights.SemiBold,
                        ),
                      ),
                    ),
                    Text(
                      'Reset your new password',
                      style: GoogleFonts.barlow(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeights.SemiBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///---------New Password--------------
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'New Password',
                    style: GoogleFonts.inter(fontSize: 12),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
              child: TextField(
                //keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your new password',
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black87))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Must be at least 6 character',
                    style: GoogleFonts.inter(fontSize: 12, color: AppColors.colorGreyDark),
                  )),
            ),

            ///---------Confirm New Password--------------
            Padding(
              padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Confirm New Password',
                    style: GoogleFonts.inter(fontSize: 12),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
              child: TextField(
                //keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  //labelText: 'Enter your password',
                    hintText: 'Re-enter your new password',
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black87))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Both password must match',
                    style: GoogleFonts.inter(fontSize: 12, color: AppColors.colorGreyDark),
                  )),
            ),

            ///----------button--------
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: 328,
                    decoration: BoxDecoration(
                      color: AppColors.colorGrey,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Text(
                      'Reset Password',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeights.SemiBold,
                            color: AppColors.colorGreyDark),
                      ),
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
