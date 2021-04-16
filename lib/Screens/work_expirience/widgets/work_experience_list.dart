import 'package:flutter/material.dart';
import 'package:saubhagya/data/work_expirience_data.dart';
import 'package:saubhagya/resources/colors.dart';

class WorkExperienceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kWEData.length,
        itemBuilder: (context,index){
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if(kWEData[index].headerImage!= null && kWEData[index].headerImage.isNotEmpty)
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset(kWEData[index].headerImage,fit: BoxFit.fitWidth,),
            ),
            if(kWEData[index].companyTitle!= null && kWEData[index].companyTitle.isNotEmpty)
             Container(
               width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.symmetric(horizontal: 28,vertical: 6),
               child: Text(
                   kWEData[index].companyTitle,
                 style: TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: 34,
                   color: kBlack,
                   letterSpacing: 0.045,
                 ),
               ),
             ),
             if(kWEData[index].timeline!= null && kWEData[index].timeline.isNotEmpty)
             Container(
               width: MediaQuery.of(context).size.width,
               padding: EdgeInsets.symmetric(horizontal: 28,vertical: 6),
               child: Text(
                   kWEData[index].timeline,
                 style: TextStyle(
                   fontWeight: FontWeight.w400,
                   fontSize: 26,
                   color: kBlack,
                   letterSpacing: 0.045,
                 ),
               ),
             ),
            if(kWEData[index].description!= null && kWEData[index].description.isNotEmpty)
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 24,right: 64,top: 80,bottom: 20),
                child: Text(
                  kWEData[index].description,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 24,
                    color: kBlack,
                    letterSpacing: 0.045,
                    decorationStyle: TextDecorationStyle.wavy
                  ),
                ),
              ),
          ],
        );
        },
    );
  }
}
