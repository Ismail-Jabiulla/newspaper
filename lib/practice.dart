import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> tabs = ['All', 'Politics', 'Technical', 'Sports'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Your App'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Add functionality for the search icon
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Add functionality for the settings icon
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
                // Implement search functionality
                onChanged: (value) {
                  // Perform search based on value
                },
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            CarouselSlider.builder(
              itemCount: tabs.length,
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: _getColorForTab(index),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('All')), // Placeholder content for 'All' tab
                  PoliticsTabContent(), // Content for 'Politics' tab
                  Center(child: Text('Technical')), // Placeholder content for 'Technical' tab
                  Center(child: Text('Sports')), // Placeholder content for 'Sports' tab
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getColorForTab(int index) {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.green;
      case 3:
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}

class PoliticsTabContent extends StatelessWidget {
  final List<String> politicsList = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Implement 'Show More' functionality
            },
            child: Text('Show More'),
          ),
          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: politicsList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.blueGrey,
                alignment: Alignment.center,
                child: Text(politicsList[index], style: TextStyle(color: Colors.white)),
              );
            },
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ],
      ),
    );
  }
}
