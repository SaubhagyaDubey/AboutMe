import 'package:saubhagya/resources/images.dart';

class ProjectData{
  final String projectName;
  final String role;
  final String responsibilities;
  final String about;
  ProjectData({this.responsibilities,this.role,this.projectName,this.about});
}

List<ProjectData> kProjectDataList = [
  ProjectData(
   projectName: 'I.AM.+(Omega Superapp)',
    responsibilities: 'Code merging, Creating APK’s and IPA’s for internal Testing, Maintaining Dialog with different teams like backend and ML team for testing and resolving bugs. Training shadow resources.',
    role: 'Develop and Create Pixel-Perfect UI’s according to designs. Handle voice queries. Integrate REST APIs. Native handling for Push Notifications. Implement firebase analytics. Integrate features like food delivery, Table booking , Tracking order etc.',
    about: 'It is many apps within an umbrella app. User has the ability to check email, calendar events, book movie tickets, hotels, flight tickets, etc. Partners for the super app is Air Asia, MAF, Mr. Usta, etc. The App is a voice-first experience on iOS and Android which uses the power of NLP to facilitate a seamless voice-controlled experience',
  ),
  ProjectData(
    projectName: 'HealthGauge',
    responsibilities: 'Code merging, Deploying App bundles to playstore, Deploying IPA’s to testflight, ',
    role: 'Develop and build application for android and IOS platform. Integrate native SDK’s for Bluetooth wearables .Built Mailing and chat feature to connect patients and healthcare professionals.',
    about: 'Healthgauge Is a health tracking application that combines smart Bluetooth wearables with AI capabilities. It provides a holistic and insightful personal health monitoring solution, by innovating in the fields of artificial intelligence, machine learning, data tagging, signal processing, and the internet of things.',
  ),
];