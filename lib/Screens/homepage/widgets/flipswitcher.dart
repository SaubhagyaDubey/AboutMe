import 'dart:math';

import 'package:flutter/material.dart';
import 'package:saubhagya/data/profile.dart';

class FlipSwitcher extends StatefulWidget {
  final List<String> images;
  FlipSwitcher({this.images});
  @override
  _FlipSwitcherState createState() => _FlipSwitcherState();
}

class _FlipSwitcherState extends State<FlipSwitcher>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  int currentIndex;
  Animation<double> curve;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    curve =
    CurvedAnimation(parent: _animationController, curve: Curves.elasticInOut);
    _animation = Tween(end: 1.0, begin: 0.0).animate(curve);
    currentIndex = 0;
  }

  int imageIndex(){
    if(currentIndex+_animation.value < currentIndex+0.5)
      return currentIndex;
    else
      return currentIndex+1;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                if(currentIndex>0){
                    _animationController.reverse().then((value) {
                      setState(() {
                        currentIndex -=1;
                      });
                  });

                }
              },
          ),
          Expanded(
              child: AnimatedBuilder(
            animation: _animation,
            builder: (context,widget){
              return Transform(
                alignment: FractionalOffset.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.002)
                  ..rotateY(2*pi * _animation.value),
                child:
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(4,4),
                      )
                    ]
                  ),
                  child: Image.asset(kProfiles[imageIndex()]),
                )

              );
            },
            child: Container(),
          )),
          IconButton(icon: Icon(Icons.arrow_forward_ios),
            onPressed: (){
              if(currentIndex<kProfiles.length-1){
                setState(() {
                  _animationController.forward().then((value) {
                    _animationController.reset();
                      currentIndex +=1;
                  });
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
