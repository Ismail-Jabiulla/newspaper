// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Dynamic AppBar Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => ScreenA(),
//         '/screenB': (context) => ScreenB(),
//         '/screenC': (context) => ScreenC(),
//       },
//     );
//   }
// }
//
// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//
//   MyAppBar({required this.title});
//
//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(title),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.search),
//           onPressed: () {
//             // Handle search action
//           },
//         ),
//         IconButton(
//           icon: Icon(Icons.notifications),
//           onPressed: () {
//             // Handle notification action
//           },
//         ),
//         PopupMenuButton<String>(
//           onSelected: (String value) {
//             // Handle menu item selection
//           },
//           itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//             const PopupMenuItem<String>(
//               value: 'Settings',
//               child: Text('Settings'),
//             ),
//             const PopupMenuItem<String>(
//               value: 'About',
//               child: Text('About'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//
// class ScreenA extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar(title: 'Screen A'),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//           },
//           child: Text('Go to Screen B'),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 0,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Screen A',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Screen B',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Screen C',
//           ),
//         ],
//         onTap: (index) {
//           switch (index) {
//             case 0:
//               Navigator.pushNamed(context, '/');
//               break;
//             case 1:
//               Navigator.pushNamed(context, '/screenB');
//               break;
//             case 2:
//               Navigator.pushNamed(context, '/screenC');
//               break;
//           }
//         },
//       ),
//     );
//   }
// }
//
// class ScreenB extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar(title: 'Screen B'),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/screenC');
//           },
//           child: Text('Go to Screen C'),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 1,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Screen A',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Screen B',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Screen C',
//           ),
//         ],
//         onTap: (index) {
//           switch (index) {
//             case 0:
//               Navigator.pushNamed(context, '/');
//               break;
//             case 1:
//             // Do nothing, as we are already on Screen B
//               break;
//             case 2:
//               break;
//           }
//         },
//       ),
//     );
//   }
// }
//
// class ScreenC extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar(title: 'Screen C'),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go Back'),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 2,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Screen A',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Screen B',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Screen C',
//           ),
//         ],
//         onTap: (index) {
//           switch (index) {
//             case 0:
//               Navigator.pushNamed(context, '/');
//               break;
//             case 1:
//               break;
//             case 2:
//             // Do nothing, as we are already on Screen C
//               break;
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey, // এখানে navigatorKey সেট করা হয়েছে
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigatorKey Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigatorKey.currentState!.push(
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ),
            );
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigatorKey.currentState!.pop();
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
