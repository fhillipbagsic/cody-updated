import 'package:cody/classes/Information.dart';
import 'package:cody/widgets/NavigatorButtonWidget.dart';
import 'package:flutter/material.dart';

import 'PreventionCardWidget.dart';


class buildPreventionRowWidget extends StatelessWidget {

  final List<Information> list;
  final String title;
  final String path;
  final Color color;

  const buildPreventionRowWidget({this.list, this.title, this.path, this.color});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4.5,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                  fontSize: 16.0),
            ),
            Container(
              height: 185.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: list
                            .map((about) =>
                            buildPreventionCardWidget(prevention: about))
                            .toList(),
                      ),
                      buildNavButtonWidget(navigatorName: path, color: color),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
