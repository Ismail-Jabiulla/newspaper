import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/profile_screen/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool isChecked = false;

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
              padding: const EdgeInsets.only(top: 100.0, left: 16,),
              child: Container(
                alignment: AlignmentDirectional.centerStart,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create your account',
                      style: GoogleFonts.barlow(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeights.SemiBold,
                        ),
                      ),
                    ),
                    Text(
                      'Lets start a journey with Te News',
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

            ///-------Name-----------
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Name*',
                    style: GoogleFonts.inter(fontSize: 12),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  // labelText: 'Enter Your email',
                    hintText: 'Enter Your Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black87))),
              ),
            ),

            ///--------email-----------
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Email*',
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

            ///---------Password--------------
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 8.0),
              child: Container(
                  alignment: AlignmentDirectional.bottomStart,
                  child: Text(
                    'Password*',
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
                    hintText: 'Enter your password',
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black87))),
              ),
            ),

            ///----------Policy Check----------
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: isChecked, onChanged: (newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  }),
                  Text('I agree to all Term and Privacy Policy',
                    style: GoogleFonts.inter(fontSize: 12,
                        fontWeight: FontWeights.Bold,
                        decoration: TextDecoration.underline),),
                ],
              ),
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
                      'Update',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeights.SemiBold,
                            color: AppColors.colorGreyDark),
                      ),
                    )),
              ),
            ),

            ///--------Google signIn-----------
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: 328,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          appImages.iconGooglelogo,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sign In with Google',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeights.SemiBold,
                                color: AppColors.colorBlackHighButton),
                          ),
                        ),
                      ],
                    )),
              ),
            ),

            ///------------Divider-------------
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.colorGrey,
                      thickness: 2,
                      indent: 40,
                      endIndent: 25,
                    ),
                  ),
                  Text('or', style: TextStyle(
                      color: AppColors.colorGreyDark, fontSize: 16),),
                  Expanded(
                    child: Divider(
                      color: AppColors.colorGrey,
                      thickness: 2,
                      indent: 20,
                      endIndent: 40,
                    ),
                  ),
                ],
              ),
            ),

            ///-------SignIn-------------
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: 'Already have an account? ',
                        style: GoogleFonts.inter(
                            color: AppColors.colorBlackHighButton)),
                    TextSpan(text: 'Sign in',
                        style: GoogleFonts.inter(fontWeight: FontWeights.Bold,
                            color: AppColors.colorBlackHighButton,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()..onTap=(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                        }
                    ),
                  ]
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
