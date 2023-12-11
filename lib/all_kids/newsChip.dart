import 'package:flutter/material.dart';

import '../categorykid/allLatest.dart';
import '../categorykid/politics.dart';
import '../categorykid/sports.dart';

class NewsCategoriesChip extends StatefulWidget {
  const NewsCategoriesChip({Key? key}) : super(key: key);

  @override
  State<NewsCategoriesChip> createState() => _NewsCategoriesChipState();
}

class _NewsCategoriesChipState extends State<NewsCategoriesChip>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.deepOrange,
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'All',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              Tab(
                child: Text('Politics'),
              ),
              Tab(
                child: Text('Technical'),
              ),
              Tab(
                child: Text('Sports'),
              ),
              Tab(
                child: Text('International'),
              ),
              Tab(
                child: Text('Media'),
              ),
            ],
          ),
          SizedBox(
            height: 640, // Adjust height as needed
            child: TabBarView(
              controller: _tabController,
              children: const [
                AllLatestKid(),
                PoliticsPage(),
                Center(child: Text('Technical ')),
                SportsPage(),
                Center(child: Text('International content')),
                Center(child: Text('Media content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
