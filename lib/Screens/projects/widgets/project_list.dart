import 'package:flutter/material.dart';
import 'package:saubhagya/data/projects_data.dart';
import 'package:saubhagya/resources/colors.dart';
import 'package:saubhagya/resources/constants.dart';

class ProjectList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kProjectDataList.length,
      itemBuilder: (context,index){
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if(kProjectDataList[index].projectName!= null && kProjectDataList[index].projectName.isNotEmpty)
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 22,vertical: 6),
                child: Text(
                  kProjectDataList[index].projectName,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: kBlack,
                    letterSpacing: 0.045,
                  ),
                ),
              ),
            if(kProjectDataList[index].about!= null && kProjectDataList[index].about.isNotEmpty)
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 22,vertical: 6),
                child: Text(
                  kProjectDataList[index].about,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 24,
                    color: kBlack,
                    letterSpacing: 0.045,
                  ),
                ),
              ),
            if(kProjectDataList[index].role!= null && kProjectDataList[index].role.isNotEmpty)
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 22,vertical: 6),
                child: Text(
                  kRole,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: kBlack,
                      letterSpacing: 0.045,
                      decorationStyle: TextDecorationStyle.wavy
                  ),
                ),
              ),
            if(kProjectDataList[index].role!= null && kProjectDataList[index].role.isNotEmpty)
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 22,vertical: 6),
                child: Text(
                  kProjectDataList[index].role,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 24,
                      color: kBlack,
                      letterSpacing: 0.045,
                      decorationStyle: TextDecorationStyle.wavy
                  ),
                ),
              ),
            if(kProjectDataList[index].responsibilities!= null && kProjectDataList[index].responsibilities.isNotEmpty)
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 22,vertical: 6),
                child: Text(
                  kResponsibilities,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: kBlack,
                      letterSpacing: 0.045,
                      decorationStyle: TextDecorationStyle.wavy
                  ),
                ),
              ),
            if(kProjectDataList[index].responsibilities!= null && kProjectDataList[index].responsibilities.isNotEmpty)
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 22,vertical: 6),
                child: Text(
                  kProjectDataList[index].responsibilities,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 24,
                      color: kBlack,
                      letterSpacing: 0.045,
                      decorationStyle: TextDecorationStyle.wavy
                  ),
                ),
              ),
            SizedBox(height: 100,)
          ],
        );
      },
    );
  }
}
