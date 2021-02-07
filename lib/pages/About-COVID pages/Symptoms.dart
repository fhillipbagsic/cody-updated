import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cody/classes/Symptom.dart';
import 'package:cody/assets/styles.dart';

class Symptoms extends StatelessWidget {
  List<Symptom> symptoms = [
    Symptom(
        title: 'ab',
        image: 'lib/images/symptoms/ache.png',
        description: 'Muscle or body aches'),
    Symptom(
        title: 'a',
        image: 'lib/images/symptoms/breath.png',
        description: 'Shortness of breath or difficulty breathing'),
    Symptom(
        title: 'ab',
        image: 'lib/images/symptoms/chill.png',
        description: 'Chills'),
    Symptom(
        title: 'ab',
        image: 'lib/images/symptoms/cough.png',
        description: 'Cough'),
    Symptom(
        title: 'ab',
        image: 'lib/images/symptoms/diarrhea.png',
        description: 'Diarrhea'),
    Symptom(
        title: 'ab',
        image: 'lib/images/symptoms/fever.png',
        description: 'Fever'),
    Symptom(
        title: 'ab',
        image: 'lib/images/symptoms/smell.png',
        description: 'New loss of taste or smell'),
    Symptom(
        title: 'ab',
        image: 'lib/images/symptoms/vomit.png',
        description: 'Nausea or vomiting'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
/*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark)
    );

 */

    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 253, 1),
      appBar: AppBar(

        iconTheme: IconThemeData(
          color: Colors.grey[700],

        ),
        backgroundColor: Color.fromRGBO(243, 245, 253, 1),
        elevation: 0.0,
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          /*_buildHeader(screenHeight, ColorRed),*/
          _buildDescription(),
          _buildSymptomsGrid()],
      ),
    );
  }
}

SliverToBoxAdapter _buildHeader(double screenHeight, Color pageColor) {
  return SliverToBoxAdapter(
      child: Container(
    margin: EdgeInsets.only(bottom: 15.0),
    padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            color: infoCardShadowColor,
          ),
        ],
        color: ColorBlue2,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'People with COVID-19 have had a wide range of symptoms reported – ranging from mild symptoms to severe illness. Symptoms may appear 2-14 days after exposure to the virus. People with these symptoms may have COVID-19:',
          style: TextStyle(
              fontSize: 13.0, color: Colors.white70, letterSpacing: 0.5),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  ));
}

SliverToBoxAdapter _buildDescription() {
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Symptoms of COVID-19',
            style: TextStyle(
              height: 1.5,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 0.7,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'People with COVID-19 have had a wide range of symptoms reported – ranging from mild symptoms to severe illness. Symptoms may appear 2-14 days after exposure to the virus. People with these symptoms may have COVID-19:',
            style: TextStyle(
              height: 1.5,
              fontWeight: FontWeight.normal,
              fontSize: 14,
              letterSpacing: 0.4,
              color: Colors.grey[700],

            ),textAlign: TextAlign.justify,
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildSymptomsGrid() {
  return SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.only(left: 10.0),
      margin: EdgeInsets.fromLTRB(17.0, 0, 17.0, 13.0),
      height: 710.0,
      width: double.infinity,
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
      child: IgnorePointer(
        child: GridView.count(
          shrinkWrap: true,
          primary: true,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            symptomBox('lib/images/symptoms/ache.png', 'Muscle or body ache'),
            symptomBox('lib/images/symptoms/breath.png', 'Shortness of breath'),
            symptomBox('lib/images/symptoms/chill.png', 'Chills'),
            symptomBox('lib/images/symptoms/cough.png', 'Cough'),
            symptomBox('lib/images/symptoms/diarrhea.png', 'Diarrhea'),
            symptomBox('lib/images/symptoms/fever.png', 'Fever'),
            symptomBox(
                'lib/images/symptoms/smell.png', 'Loss of taste or smell'),
            symptomBox('lib/images/symptoms/vomit.png', 'Vomiting'),
          ],
        ),
      ),
    ),
  );
}

Widget symptomBox(String filePath, String symptomName) {
  return Container(
    padding: const EdgeInsets.all(8),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 8),
                  blurRadius: 10,
                  color: Colors.grey,
                  spreadRadius: 1)
            ],
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(filePath),
            radius: 52.0,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          symptomName,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
