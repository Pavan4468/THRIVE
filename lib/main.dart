import 'package:flutter/material.dart';
import 'signinscreen.dart';
import 'signupscreen.dart';
import 'homePage.dart';
import 'selectionScreen.dart'; // Import the new SelectionScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Sign-In/Sign-Up',
      theme: ThemeData(
        primaryColor: Color(0xFF003F63),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInScreen(), // Directly set SignInScreen as the home
      routes: {
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomePage(),
        '/selection': (context) => SelectionScreen(), // Add route for SelectionScreen
      },
    );
  }
}
