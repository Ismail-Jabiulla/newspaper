
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../profile_screen/complete_screen01.dart';
import 'bookmarkScreen.dart';
import 'homePageScreen.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    // Add your screens here
    HomePageScreen(),
    PodcastPage(),
    PublicPage(),
    BookmarkScreen(),
    CompleteScreen01(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.colorBlackHighButton,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, size: 20,),
                        SizedBox(width: 2,),
                        Text('Home', style: TextStyle(color: Colors.white, fontSize: 12),),
                      ],
                    ),
                  ),
                ),
                label: ''
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.podcasts, color: AppColors.colorBlackHighButton),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.public, color: AppColors.colorBlackHighButton),
                label: ''),
            BottomNavigationBarItem(
                icon:
                Icon(Icons.bookmarks, color: AppColors.colorBlackHighButton),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: AppColors.colorBlackHighButton),
                label: '')
          ],
        )
    );
  }
}



class PodcastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Podcast'),
    );
  }
}

class PublicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Public'),
    );
  }
}
