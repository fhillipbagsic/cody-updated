

import 'package:cody/assets/styles.dart';
import 'package:flutter/material.dart';

class buildNavButtonWidget extends StatelessWidget {
  final String navigatorName;

  buildNavButtonWidget({this.navigatorName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, navigatorName);
      },
      child: Container(
        margin: EdgeInsets.only(left: 5.0),
        width: 20.0,
        height: 20.0,
        decoration: new BoxDecoration(
          color: ColorBrightGreen,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            '>',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
