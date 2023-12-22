import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Generate a list of sample news articles
  final List<String> newsArticles = List.generate(20, (index) => 'News ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NewsPaper'),
          leading: IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Action for profile icon
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Action for search icon
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Action for more options icon
              },
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ListTile(
                    title: Text(newsArticles[index]),
                    // Replace with your news item UI
                  );
                },
                childCount: newsArticles.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
