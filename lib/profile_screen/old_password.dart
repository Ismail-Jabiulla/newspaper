import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/profile_screen/sign_upscreen.dart';

import '../constants/colors.dart';
import '../constants/fonts_widgets.dart';
import 'reset_password.dart';
import 'forget_password.dart';

class OldPasswordScreen extends StatefulWidget {
  const OldPasswordScreen({super.key});

  @override
  State<OldPasswordScreen> createState() => _OldPasswordScreenState();
}

class _OldPasswordScreenState extends State<OldPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///--------------background and text----------------
            Container(
              height: 341,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(appImages.signupImage),
                    fit: BoxFit.cover,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Enter your old password',
                      style: GoogleFonts.barlow(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeights.SemiBold,
                          color: AppColors.colorText,
                        ),
                      ),
                    ),
                    Text('Enter your old password to change new password', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12,color: AppColors.colorText)),),
                  ],
                ),
              ),
            ),

            ///--------email-----------
            Padding(
              padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Old Password',
                    style: GoogleFonts.inter(fontSize: 12),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  // labelText: 'Enter Your email',
                    hintText: 'Enter Your Old Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black87))),
              ),
            ),

            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
                },
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('Forgot Password', style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeights.Bold),),
              ),
            ),

            ///----------button--------
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen()));
                },
                child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: 328,
                    decoration: BoxDecoration(
                      color: AppColors.colorGrey,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Text(
                      'Confirm',
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
