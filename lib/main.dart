import 'package:flutter/material.dart';

import 'home_screen.dart';

///This file calls the homeScreen file so it can be run as a main app
///here we can also determine all of the app design like colors and text font

///In the class _MyAppState, in home: homeScreen() => is calling the main class -
///where every main call of the app will the made. You will see the bottomNav and -
///what type of app layout structure (Scaffold) and other main call for the general use -
///of the app.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Plus Demo',
      theme: ThemeData(
        //backgroundColor: Colors.grey.shade300,
        scaffoldBackgroundColor: Colors.grey.shade300
      ),
      home: homeScreen() , //calls the home screen class
    );
  }
}
