import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newspaper/constants/image_strings.dart';
import '../constants/strings.dart';

class InternationalKid extends StatelessWidget {
  const InternationalKid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 156,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(appImages.iconsInternational),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              categoryInternationalTxt,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
