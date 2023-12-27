import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';

import 'date_ofbirth_pick.dart';

enum Gender { Select, Male, Female, Other }
class CompleteScreen01 extends StatefulWidget {
  CompleteScreen01({super.key});

  @override
  State<CompleteScreen01> createState() => _CompleteScreen01State();
}
class _CompleteScreen01State extends State<CompleteScreen01> {

  Gender _selectedGender = Gender.Select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///--------------App Bar--------------
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                size: 24,
              )),
          title: Text(
            'Complete Profile',
            style: GoogleFonts.inter(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeights.Bold)),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ///----------Profile Picture & Edit------------------
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 90,
                          backgroundImage: AssetImage(appImages.imageProfile),
                        ),

                        ///------------Edit------------------
                        Positioned(
                          top: 15,
                          right: 0,
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child: Icon(
                              Icons.edit,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ///----------Name-------------
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 16.0, right: 8.0),
                  child: Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Text(
                        'Name',
                        style: GoogleFonts.inter(fontSize: 12),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Enter Your Full Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.black87))),
                  ),
                ),
                ///---------Phone--------------
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 8.0),
                  child: Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Text(
                        'Phone',
                        style: GoogleFonts.inter(fontSize: 12),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.black87))),
                  ),
                ),
                ///---------Gender--------------
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 8.0),
                  child: Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Text(
                        'Gender',
                        style: GoogleFonts.inter(fontSize: 12),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                  child: SingleChildScrollView (
                    child: DropdownButtonFormField(
                        value: _selectedGender,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedGender = newValue!;
                          });
                        },
                        items: Gender.values.map((Gender gender) {
                          return DropdownMenuItem<Gender>(
                            value: gender,
                            child: Text(gender.toString().split('.').last),
                          );
                        }).toList(),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.black87)
                          )
                        ),
                  ),
                ),
                ),
                ///---------Calender--------------
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 8.0),
                  child: Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Text(
                        'Calender',
                        style: GoogleFonts.inter(fontSize: 12),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                  child: DateOfBirth_picker(),
                ),
                ///---------Update Button--------------
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, bottom: 16),
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 50,
                    width: 328,
                    decoration: BoxDecoration(
                      color: AppColors.colorGrey,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Text('Update', style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 16, fontWeight: FontWeights.SemiBold, color: AppColors.colorGreyDark),),)
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
