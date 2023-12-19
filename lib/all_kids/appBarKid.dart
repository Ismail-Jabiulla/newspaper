// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../constants/colors.dart';
// import 'package:newspaper/constants/image_strings.dart';
//
// class AppBarKid extends StatelessWidget implements PreferredSizeWidget {
//   const AppBarKid({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       title: Center(
//         child: Column(
//           children: [
//             Container(
//                 alignment: AlignmentDirectional.center,
//                 height: 30,
//                 width: 120,
//                 decoration: BoxDecoration(
//                   color: AppColors.colorBlackHighButton,
//                   borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(6),
//                       topLeft: Radius.circular(6)),
//                 ),
//                 child: Text(
//                   'The News',
//                   style: GoogleFonts.inter(
//                       textStyle: TextStyle(
//                           fontSize: 20, color: AppColors.colorText)),
//                 )),
//           ],
//         ),
//       ),
//       leading: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           height: 50,
//           width: 50,
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                   image: AssetImage(appImages.imageProfile),
//                   fit: BoxFit.fill)),
//         ),
//       ),
//       actions: [
//         IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.search,
//               color: AppColors.colorBlackHighButton,
//             )),
//         IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.notifications,
//                 color: AppColors.colorBlackHighButton)),
//       ],
//     );
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }
