import 'package:flutter/material.dart';
import 'package:solar_system/screens/detail_screen.dart';
import 'package:solar_system/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.deepPurpleAccent,
        primaryColor:  Colors.pink[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'GoodDog',
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        DetailScreen.routeName : (context) => DetailScreen(),
      },
    );
  }
}

