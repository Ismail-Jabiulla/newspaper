import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define routes
      routes: {
        '/': (context) => OnboardingScreen(),
        '/homepage': (context) => HomePage(),
      },
      // Initial route
      initialRoute: '/',
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to the Onboarding Screen!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the homepage after onboarding
                Navigator.pushReplacementNamed(context, '/homepage');
              },
              child: Text('Continue to Homepage'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Homepage!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
