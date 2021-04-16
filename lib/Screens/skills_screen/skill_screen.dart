import 'package:flutter/material.dart';
import 'package:saubhagya/Screens/skills_screen/widgets/skill_display_widget.dart';
import 'package:saubhagya/common/widgets/common_appbar.dart';
import 'package:saubhagya/data/info_items.dart';
import 'package:saubhagya/data/skills.dart';
import 'package:saubhagya/resources/colors.dart';
import 'package:saubhagya/resources/images.dart';
class SkillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBG,
      appBar: commonAppBar(infoModel: kInfo[0],context: context),

    body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              child: Image.asset(
                kFlutterOutLine,
                height: 200,
                width: 200,
              ),
            ),
          ]+List<Widget>.generate(skills.length, (index) => SkillDisplay(skill: skills[index],)),
        ),
      ),
    );
  }
}

class SkillDisplay extends StatelessWidget {
  final Skill skill;
  SkillDisplay({@required this.skill});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            skill.name,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              letterSpacing: 0.045,
            ),
          ),
          SkillDisplayWidget(skill.rating)
        ],
      ),
    );
  }
}

