import 'package:flutter/material.dart';
import 'package:saubhagya/Screens/homepage/widgets/info_list_widget.dart';
import 'package:saubhagya/Screens/homepage/widgets/social_handle_widget.dart';
import 'package:saubhagya/resources/colors.dart';
import 'package:saubhagya/resources/constants.dart';

class AboutMe extends StatefulWidget {
  final Function onPrevious;
  AboutMe({this.onPrevious});
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBG,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child:  IconButton(
                  icon: Icon(Icons.keyboard_arrow_down,
                  ),
                  color: Colors.black,
                  iconSize: 60,
                  splashColor: kSecondaryBG,
                  onPressed: widget.onPrevious,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 36,right:36,),
                child: Text(kAboutMe,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    letterSpacing: 0.045,
                  ),
                ),
              ),
              Expanded(child: InfoListWidget()),
              SocialHandleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
