import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';

class CompleteScreen01 extends StatelessWidget {
  CompleteScreen01({super.key});

  var _value = '-1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///--------------App Bar--------------
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
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
        body: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
          child: Column(
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
              Padding(
                padding: const EdgeInsets.only(top: 32.0, right: 8, left: 8),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Enter Your Full Name',
                      hintText: 'Enter Your Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black87))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, right: 8, left: 8),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.black87))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, right: 8, left: 8),
                child: DropdownButtonFormField(
                    value: _value,
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black87)
                      )
                    ),
                    items: [
                      DropdownMenuItem(
                          child: Text('Select Gender -'), value: '-1'),
                      DropdownMenuItem(child: Text('Male'), value: '1'),
                      DropdownMenuItem(child: Text('Female'), value: '2'),
                      DropdownMenuItem(child: Text('Others'), value: '2'),
                    ],
                    onChanged: (v) {}),
              ),
            ],
          ),
        ));
  }
}
