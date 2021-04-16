import 'package:flutter/material.dart';
import 'package:saubhagya/data/info_items.dart';
import 'package:saubhagya/resources/colors.dart';



AppBar commonAppBar({InfoModel infoModel,BuildContext context}) =>
    AppBar(
      elevation: 0,
      leading: InkWell(
        child: Hero(
          tag: infoModel.name,
          child: Icon(Icons.arrow_back_ios,
            color: Colors.black,
            size: 25,
          ),
        ),
        splashColor: kSecondaryBG,
        onTap: (){
          Navigator.pop(context);
        },
      ),
      backgroundColor: kPrimaryBG,
      title: Text(
        infoModel.name,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 30,
          color: kBlack,
          letterSpacing: 0.045,
        ),
      ),
    );

