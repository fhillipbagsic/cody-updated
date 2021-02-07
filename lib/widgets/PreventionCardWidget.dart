import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Information.dart';
import 'package:flutter/material.dart';

class buildPreventionCardWidget extends StatelessWidget {

  final Information prevention;


  buildPreventionCardWidget({this.prevention});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: 107.0,
      height: 135.0,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 20.0,
              color: infoCardShadowColor),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(prevention.image),
            height: 65,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            prevention.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
