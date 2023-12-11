import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newspaper/constants/image_strings.dart';

class LiveNews extends StatelessWidget {
  const LiveNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 77,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, index){
          return Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            child: Column(
              children: [
                Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Image.asset(appImages.imageBreakingNews),
                ),
                Text('NATO Update', overflow: TextOverflow.ellipsis,),
                  ],
            ),
          );
        }),
      ),
    );
  }
}
