import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/profile_screen/sign_upscreen.dart';

import '../constants/colors.dart';
import '../constants/fonts_widgets.dart';
import 'code_varification.dart';
import 'forgetpass_verification.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                      'Enter your email',
                      style: GoogleFonts.barlow(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeights.SemiBold,
                          color: AppColors.colorText,
                        ),
                      ),
                    ),
                    Text('Enter your email to reset password', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12,color: AppColors.colorText)),),
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
                    'Email',
                    style: GoogleFonts.inter(fontSize: 12),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  // labelText: 'Enter Your email',
                    hintText: 'Enter Your email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black87))),
              ),
            ),

            ///----------button--------
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPass_VarificatioCode()));
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
