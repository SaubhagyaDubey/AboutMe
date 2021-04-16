import 'package:flutter/material.dart';
import 'package:saubhagya/Screens/homepage/widgets/flipswitcher.dart';
import 'package:saubhagya/resources/colors.dart';
import 'package:saubhagya/resources/constants.dart';

class Introduction extends StatefulWidget {
  final Function onNext;
  Introduction({this.onNext});
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryBG,
      floatingActionButton: IconButton(
        icon: Icon(Icons.keyboard_arrow_down,
        ),
        color: Colors.black,
        iconSize: 60,
        splashColor: kSecondaryBG,
        onPressed: widget.onNext,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              FlipSwitcher(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36,vertical: 24),
                child: Text(kIntroName,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    letterSpacing: 0.045,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 37),
                padding: EdgeInsets.all(31),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: kSecondaryBG,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                ),
                child: Text(
                  kIntroText,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    letterSpacing: 0.045,
                  ),
                  maxLines: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
