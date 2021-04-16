import 'package:flutter/material.dart';
import 'package:saubhagya/Screens/work_expirience/widgets/work_experience_list.dart';
import 'package:saubhagya/common/widgets/common_appbar.dart';
import 'package:saubhagya/data/info_items.dart';
import 'package:saubhagya/resources/colors.dart';

class WorkExperience extends StatefulWidget {
  @override
  _WorkExperienceState createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(infoModel: kInfo[1],context: context),
      backgroundColor: kPrimaryBG,
      body: WorkExperienceList(),
    );
  }
}
