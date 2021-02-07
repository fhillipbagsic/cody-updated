import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Information.dart';
import 'package:flutter/material.dart';


class buildInformationCardWidget extends StatelessWidget {

  final Information info;

  buildInformationCardWidget({this.info});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {Navigator.pushNamed(context, info.path);},
      child: Container(

        padding: EdgeInsets.only(left: 10.0),
        margin: EdgeInsets.fromLTRB(17.0, 0, 17.0, 13.0),
        height: 110.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 8),
              blurRadius: 24,
              color: infoCardShadowColor,
            ),
          ],
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(info.image),
              width: 85.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 15.0),
              width: MediaQuery.of(context).size.width - 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.title,
                    style:
                    TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    info.preview,
                    style: TextStyle(color: Colors.grey[600]),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    '>',
                    style: TextStyle(
                      color: Colors.grey[350],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}