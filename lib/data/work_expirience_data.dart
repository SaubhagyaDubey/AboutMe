import 'package:saubhagya/resources/images.dart';

class WorkExperienceData{
  final String headerImage;
  final String timeline;
  final String companyTitle;
  final String description;
  WorkExperienceData({this.companyTitle,this.description,this.headerImage,this.timeline});
}

List<WorkExperienceData> kWEData = [
  WorkExperienceData(
    headerImage: kUnthinkable,
    description: "Started here as a fresh graduate where I pioneered within the organization for learning and developing flutter applications. I created multiple project-winning POC's. Also, being part of different one-of-a-kind Industry-standard projects whilst training multiple resources for the organization's current and future endeavors.",
    companyTitle: "Unthinkable solutions",
    timeline: "(January 2020 - Present)",
  ),
];