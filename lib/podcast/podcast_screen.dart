import 'package:flutter/material.dart';
import 'package:newspaper/constants/fonts_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../categorykid/allLatest.dart';
import '../categorykid/international.dart';
import '../categorykid/media.dart';
import '../categorykid/politics.dart';
import '../categorykid/sports.dart';
import '../categorykid/technology.dart';


class PodcastScreen extends StatefulWidget {
  @override
  _PodcastScreenState createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen>
    with SingleTickerProviderStateMixin {
  final List<String> tabs = [
    'All',
    'Politics',
    'Technology',
    'Sports',
    'International',
    'Media'
  ];
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
    _scrollController = ScrollController();
    _tabController.addListener(() {
      setState(() {}); // Update the state to refresh the AppBar title
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-------App Bar----------
      appBar: AppBar(
        title: Text(tabs[_tabController.index], style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeights.Bold),),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:16.0),
            child: GestureDetector(
              onTap: (){},
                child: Icon(Icons.more_horiz)),
          )
        ],
      ),

        ///--------Tab Bar-------------
        body: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 16.0, bottom: 16),
                child: Text('What kind of podcast you want to hear today?', style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeights.Bold),),
              ),
            TabBar(controller: _tabController, isScrollable: true, tabs: [
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                Tab(
                  child: Text(
                    'Politics',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                Tab(
                  child: Text(
                    'Technology',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sports',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                Tab(
                  child: Text(
                    'International',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                Tab(
                  child: Text(
                    'Media',
                    style: TextStyle(color: Colors.black87),
                  ),
                )
              ]),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  AllLatestKid(),
                  PoliticsPage(),
                  TechnologyPage(),
                  sportsPage(),
                  internationalPage(),
                  mediaPage(),
                ]),
              ),
            ],
          ),),

    );
  }
}
