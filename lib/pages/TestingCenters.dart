import 'package:cody/assets/styles.dart';
import 'package:cody/widgets/AppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cody/widgets/HeaderWidget.dart';

class TestingCenters extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /*
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorBrightPurple,
  ));
     */
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 253, 1),
      appBar: AppBarWidget(title: 'Local Centers', color: ColorBrightPurple,),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          buildHeaderWidget(color: ColorBrightPurple, title: 'Things to Know About COVID-19',image: 'lib/images/reading.png', description: 'To further understand what COVID-19 is all about, read more about what the virus is, its symptoms, who are at high risks, and when you should consult a doctor.'),
        ],
      ),

    );
  }
}
