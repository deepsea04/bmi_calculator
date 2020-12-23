

import 'package:flutter/material.dart';
import 'components/input_page.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.teal,
        textTheme: TextTheme(
         body1: TextStyle(color: Colors.white)
         ),
        ),
      home: InputPage(),
    );
  }
}



