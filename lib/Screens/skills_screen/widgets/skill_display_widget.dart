import 'package:flutter/material.dart';
import 'package:saubhagya/resources/colors.dart';

class SkillDisplayWidget extends StatelessWidget {
  final int rating;
  SkillDisplayWidget(this.rating):assert(!(rating<0)&&!(rating>5));
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) =>
          Container(
            height: 20,
            width: 20,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: rating>=index+1?kBlack:kSecondaryBG
            ),
          )
      )
    );
  }
}
