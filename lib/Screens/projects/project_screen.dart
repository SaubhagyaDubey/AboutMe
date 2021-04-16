import 'package:flutter/material.dart';
import 'package:saubhagya/Screens/projects/widgets/project_list.dart';
import 'package:saubhagya/common/widgets/common_appbar.dart';
import 'package:saubhagya/data/info_items.dart';
import 'package:saubhagya/resources/colors.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(infoModel: kInfo[2],context: context),
      backgroundColor: kPrimaryBG,
      body: ProjectList(),
    );
  }
}
