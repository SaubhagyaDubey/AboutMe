import 'package:flutter/material.dart';
import 'package:saubhagya/core/util.dart';
import 'package:saubhagya/data/info_items.dart';
import 'package:saubhagya/resources/colors.dart';

class InfoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: kInfo.length,
        itemBuilder: (context,index){
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 54,
            margin: EdgeInsets.symmetric(vertical: 9,horizontal: 21),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 17),
            decoration: BoxDecoration(
              color: kSecondaryBG,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Row(
             children: [
               Text(
                 kInfo[index].name,
                 style: TextStyle(
                   fontWeight: FontWeight.w400,
                   fontSize: 22,
                   letterSpacing: 0.045,
                 ),
               ),
               Spacer(),
               InkWell(
                 child: Hero(
                   tag: kInfo[index].name,
                   child: Icon(Icons.arrow_forward_ios,
                     color: Colors.black,
                     size: 30,
                   ),
                 ),
                 onTap: (){
                   Utilities.navigate(kInfo[index].item, context);
                 },
               )
             ],
            ),
          );
        });
  }
}
