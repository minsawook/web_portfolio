import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/home_screen.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'msw\'s  portfolio',
      theme: ThemeData.light().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
      ),
      home: HomeScreen(),
    );
  }
}
