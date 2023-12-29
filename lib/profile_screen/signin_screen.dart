import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/profile_screen/sign_upscreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnable = false;
  Color _buttonColor = Colors.grey;


  void _checkTextField(){
    setState(() {
      _isButtonEnable = _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    _emailController.addListener(_checkTextField);
    _passwordController.addListener(_checkTextField);
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


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
                      'Sign in to your \nAccount',
                      style: GoogleFonts.barlow(
                        textStyle: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeights.SemiBold,
                          color: AppColors.colorText,
                        ),
                      ),
                    ),
                    RichText(
                        text: TextSpan(
                            style: GoogleFonts.inter(fontSize: 16),
                            children: [
                          TextSpan(text: '''Don't have an account? '''),
                          TextSpan(
                            text: 'Create a Account',
                            style: const TextStyle(
                                fontWeight: FontWeights.Bold,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()));
                              },
                          ),
                          TextSpan(text: '\nIt takes less than a minute'),
                        ]))
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
                controller: _emailController,
                onChanged: (value){
                  _checkTextField();
                },
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
                    'Password',
                    style: GoogleFonts.inter(fontSize: 12),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
              child: TextField(
                controller: _passwordController,
                onChanged: (value){
                  _checkTextField();
                },
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
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeights.Bold,
                        decoration: TextDecoration.underline),
                  )),
            ),

            ///----------button--------
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: GestureDetector(
               onTap: _isButtonEnable ? (){ print('Submitted');}: null,
                child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: 328,
                    decoration: BoxDecoration(
                      color: _isButtonEnable? AppColors.colorBlackHighButton: AppColors.colorGrey,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Text(
                      'Update',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeights.SemiBold,
                            color: _isButtonEnable? AppColors.colorWhiteHighEmp: AppColors.colorGreyDark,),
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
          ],
        ),
      ),
    );
  }
}
