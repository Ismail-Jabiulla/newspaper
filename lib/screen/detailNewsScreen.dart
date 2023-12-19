import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/constants/colors.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:newspaper/constants/image_strings.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///------- Back and News heading----------
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
        title: Center(
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.inter(
                textStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeights.Bold)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              size: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32),
          child: Column(
            children: [
              ///------- News Image----------
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    height: 184,
                    width: 328,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(appImages.imageSlider02),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),

              ///------- News Comments----------
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red ,
                    ),
                    Text(' 12.1k Likes'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.mode_comment_outlined),
                    Text(' 12.1k Comments'),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.bookmarks)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  ],
                ),
              ),

              ///-------Audio Section---------
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 104,
                  width: 328,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.colorGrey,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeights.Bold)),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_circle_outline,
                                size: 34,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              ///----------Readable Area---------
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  'Lorem ipsum dolor sit amet,consectetur adipiscing elit.',
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeights.Bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                ),
                child: Expanded(
                  flex: 1,
                  child: Text(
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat justo eget justo ultricies, eget feugiat odio eleifend. Sed ut risus ac tortor viverra efficitur ac nec urna. Nulla facilisi. Nulla facilisi. Mauris sed ex in elit laoreet tincidunt. Sed et massa euismod, tristique neque nec, vestibulum odio. Integer quis tellus consectetur, faucibus lorem at, consequat mauris. Suspendisse potenti. Duis id convallis ipsum. Duis consectetur ligula vel dui interdum commodo. Aenean non purus consectetur, efficitur risus nec, facilisis libero. Fusce nec efficitur mauris, eget tincidunt leo. Nulla facilisi. Nulla facilisi.

    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin placerat mauris eu ex tristique, a ultrices leo sodales. Proin a massa auctor, sodales mi vel, consectetur enim. Ut vestibulum nibh vel ante tempor, vitae ultrices elit vestibulum. Maecenas eget nisi fermentum, tempor metus at, vestibulum velit. Proin vel urna metus. Suspendisse potenti. Nulla facilisi. Curabitur sollicitudin ullamcorper nulla, vitae rhoncus mi facilisis sit amet. Nulla facilisi. Duis vestibulum, elit vel ultricies dignissim, est justo efficitur lacus, in iaculis ligula sem ac mauris. Suspendisse potenti.

    Vestibulum fringilla leo a sem blandit, at bibendum justo ultricies. Aenean condimentum posuere ligula, eget dignissim felis congue in. Suspendisse potenti. Curabitur accumsan urna at dui sodales tincidunt. Vestibulum luctus justo eget risus ultrices, sed congue eros fringilla. Proin vulputate luctus semper. Nulla vestibulum euismod dolor, sed pharetra elit. Vivamus vulputate nunc eu urna varius, at consequat libero ultrices. Sed vestibulum, dolor a sodales sagittis, libero sem placerat nulla, a hendrerit magna justo sit amet lectus. Morbi id elit nec mauris suscipit luctus. Donec efficitur enim a elit dapibus, non scelerisque mi dapibus. Integer in ex quis felis volutpat consectetur.

    Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam id eros vitae nulla pharetra vulputate. Cras eget libero fermentum, tincidunt nunc a, posuere mauris. Ut vehicula velit a libero rutrum dignissim. Duis ut justo magna. Ut gravida vestibulum nulla, ut sodales elit maximus vitae. Nam in odio at quam venenatis suscipit a a felis. Ut in tellus odio. Vivamus commodo mauris in diam commodo bibendum. Sed commodo risus odio, non tempor dolor ultrices vitae. Vivamus nec eros id leo bibendum tempus.

    Fusce vel sapien consectetur, placerat ligula at, lobortis sapien. Nulla facilisi. Maecenas vitae lacus tellus. Nulla auctor nisl vitae enim scelerisque, id aliquam velit viverra. Aliquam a purus in ipsum posuere ultrices. Suspendisse potenti. Integer gravida orci eget libero ultrices, ac vulputate dui molestie. Nullam efficitur ligula quis massa auctor suscipit. Nulla facilisi. Sed eu tincidunt dui. Vivamus malesuada metus eget eleifend venenatis. Sed vel est nec ante cursus malesuada. Nunc efficitur justo vel neque congue, ac tincidunt tortor sollicitudin. Sed maximus nulla eget urna efficitur cursus.

    I hope this text serves your purpose! If you need anything else, feel free to ask.''',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
