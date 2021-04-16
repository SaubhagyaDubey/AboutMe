import 'package:flutter/material.dart';
import 'package:saubhagya/Screens/homepage/homePage.dart';
import 'package:saubhagya/resources/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       fontFamily: "ComicNeue",
        accentColor: kPrimaryBG
      ),
      home: HomePage()
    );
  }
}
