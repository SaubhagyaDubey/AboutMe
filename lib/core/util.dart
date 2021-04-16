import 'package:flutter/cupertino.dart';
import 'package:saubhagya/Screens/projects/project_screen.dart';
import 'package:saubhagya/Screens/skills_screen/skill_screen.dart';
import 'package:saubhagya/Screens/work_expirience/work_expirience.dart';
import 'package:saubhagya/data/info_items.dart';
import 'package:url_launcher/url_launcher.dart';

class Utilities {
  static launchURL(String url) async {
     if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static void navigate(InfoItems item, BuildContext context) {
    CupertinoPageRoute route;
    switch (item) {
      case InfoItems.skills:
        route = CupertinoPageRoute(
          builder: (context) => SkillScreen(),
        );
        break;
      case InfoItems.workExperience:
        route = CupertinoPageRoute(
          builder: (context) => WorkExperience(),
        );
        break;
      case InfoItems.projects:
        route = CupertinoPageRoute(
          builder: (context) => Projects(),
        );
        break;

      default:
        route = null;
        break;
    }
    if (route != null) {
      Navigator.push(context, route);
    }
  }
}
