import 'dart:html';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newspaper/categorykid/politics.dart';
import '../constants/fonts_widgets.dart';
import '../model/onBording_model.dart';
import 'package:newspaper/constants/image_strings.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesList extends StatelessWidget {
  List _category = [
    Data(image: appImages.iconsAllLatest, text: 'All Latest'),
    Data(image: appImages.iconsPolitics, text: 'Politics'),
    Data(image: appImages.iconsTechnology, text: 'Technology'),
    Data(image: appImages.iconsSports, text: 'Sports'),
    Data(image: appImages.iconsInternational, text: 'International'),
    Data(image: appImages.iconsMedia, text: 'Media'),
  ];
  List<int> SelectionItems = [];

  CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: Container(
        height: 500,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: GridView.builder(
              itemCount: _category.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (SelectionItems.contains(index)) {
                        SelectionItems.remove(index);
                      } else {
                        SelectionItems.add(index);
                      }
                    });
                    // print(index);
                    // clickActions(index);
                    //function call
                  },
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: SvgPicture.asset(_category[index].image),
                        ),
                        height: 120,
                        width: 156,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all()),
                        color: SelectionItems.contains(index)? Colors.grey: null,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(_category[index].text,
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeights.SemiBold))),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }

  void clickActions(int index) {
    if (index == 0) {
      print("All Latest");
    } else if (index == 1) {
      print("Politics");
    } else if (index == 2) {
      print("Technology");
    } else if (index == 3) {
      print("Sports");
    } else if (index == 4) {
      print("International");
    } else if (index == 5) {
      print("Media");
    }
  }

  void setState(Null Function() param0) {}
  }