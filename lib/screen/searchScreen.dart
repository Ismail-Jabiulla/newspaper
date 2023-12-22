import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newspaper/constants/image_strings.dart';
import '../constants/colors.dart';
import 'notificationScreen.dart';


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _suggestedItems = [
    'Technology',
    'International',
    'Sports',
    'Media',
    'Politics',
  ];
  List<String> _previousSearches = [
    'Sports',
    'Politics',
    'International',
  ];

  // ... (Previous code remains the same)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----------AppBar--------------
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Column(
            children: [
              Container(
                  alignment: AlignmentDirectional.center,
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: AppColors.colorBlackHighButton,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(6),
                        topLeft: Radius.circular(6)),
                  ),
                  child: Text(
                    'The News',
                    style: GoogleFonts.inter(
                        textStyle:
                        TextStyle(fontSize: 20, color: AppColors.colorText)),
                  )),
            ],
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(appImages.imageProfile),
                    fit: BoxFit.fill)),
          ),
        ),
        actions: [
          ///-----------------Search----------------
          IconButton(
              onPressed: () {
              },
              icon: Icon(
                Icons.search,
                color: AppColors.colorBlackHighButton,
              )),
          ///-----------------Notification----------------
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
              },
              icon: Icon(Icons.notifications,
                  color: AppColors.colorBlackHighButton)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search...',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                suffixIcon: IconButton(
                  ///-------------------Speech MicroPhone-----------------------
                  icon: Icon(Icons.mic),
                  onPressed: () {
                    print('Microphone pressed');
                  },
                ),
              ),
              onChanged: (value) {
                // Handle search query changes here
                print('Search query: $value');
                // You can perform search operations based on the entered text
              },
            ),
            SizedBox(height: 20),
            Text(
              'Suggested Searches:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              children: _suggestedItems.map((item) {
                return GestureDetector(
                  onTap: () {
                    // Perform search based on the tapped suggested item
                    print('Suggested item tapped: $item');
                    _searchController.text = item;
                  },
                  child: Chip(
                    label: Text(item),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Previous Searches:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              children: _previousSearches.map((item) {
                return GestureDetector(
                  onTap: () {
                    // Perform search based on the tapped suggested item
                    print('Previous Suggested item tapped: $item');
                    _searchController.text = item;
                  },
                  child: Chip(
                    label: Text(item),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
