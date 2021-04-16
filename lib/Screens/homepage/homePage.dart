import 'package:flutter/material.dart';
import 'package:saubhagya/Screens/homepage/pages/aboutme.dart';
import 'package:saubhagya/Screens/homepage/pages/introduction.dart';
import 'package:saubhagya/resources/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController controller;


  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }
  void onNext(){
    controller.nextPage(duration: Duration(milliseconds: 700), curve: Curves.linear);
  }
  void onPrevious(){
    controller.previousPage(duration: Duration(milliseconds: 700),curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBG,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: controller,
        children: [
          Introduction(
            onNext: onNext,
          ),
          AboutMe(onPrevious: onPrevious,),
        ],
        ),
      ),
    );
  }
}
