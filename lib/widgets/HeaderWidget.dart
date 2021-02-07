import 'package:cody/assets/styles.dart';
import 'package:flutter/material.dart';


class buildHeaderWidget extends StatelessWidget {

  final Color color;
  final String title;
  final String image;
  final String description;

  buildHeaderWidget({this.color, this.title, this.image, this.description});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
          margin: EdgeInsets.only(bottom: 15.0),
          padding: const EdgeInsets.fromLTRB(20.0, .0, 10.0, 0.0),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 7),
                  color: infoCardShadowColor,
                ),
              ],
              color: color,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              )),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.3,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 13.0, color: Colors.white70),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                    ]),
                  ),
                  Image(
                    image: AssetImage(image),
                    width: 120.0,
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

//