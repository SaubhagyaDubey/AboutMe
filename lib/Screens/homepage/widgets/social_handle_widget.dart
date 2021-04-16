
import 'package:flutter/material.dart';
import 'package:saubhagya/core/util.dart';
import 'package:saubhagya/resources/colors.dart';
import 'package:saubhagya/resources/constants.dart';
import 'package:saubhagya/resources/images.dart';

class SocialHandleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 17),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              kFollowMe,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                letterSpacing: 0.045,
              ),
            ),
          Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: (){
                Utilities.launchURL('https://instagram.com/shubhu.senpai?igshid=lhnyglv6p4em');
              },
              child: Image.asset(
                kInstagramIC,
                color: kBlack,
                height: 30,
                width: 30,
              ),
            ),
            Container(
              height: 50,width: 3,
              color: kBlack,
              margin: EdgeInsets.symmetric(horizontal: 21),
            ),
            InkWell(
              onTap: (){
                Utilities.launchURL('https://www.linkedin.com/in/saubhagya-dubey/');
              },
              child: Image.asset(
                kLinkedInIC,
                color: kBlack,
                height: 30,
                width: 30,
              ),
            ),
            Container(
              height: 50,width: 3,
              color: kBlack,
              margin: EdgeInsets.symmetric(horizontal: 21,vertical: 10),
            ),
            InkWell(
              onTap: (){
                Utilities.launchURL('https://github.com/SaubhagyaDubey');
              },
              child: Image.asset(
                kGithubIC,
                color: kBlack,
                height: 30,
                width: 30,
              ),
            ),
          ],
        )
          ],
        ),
      ),
    );
  }
}
