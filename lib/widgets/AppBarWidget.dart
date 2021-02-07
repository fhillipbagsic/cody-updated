import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{

  final String title;
  final Color color;

  AppBarWidget({this.title, this.color, Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(fontSize: 22, fontFamily: "Roboto-Bold", letterSpacing: 1.2,),),
      backgroundColor: color,
      elevation: 0.0,
    );
  }

  @override
  // TODO: implement preferredSize
  final Size preferredSize;
}

