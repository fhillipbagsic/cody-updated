import 'package:cody/classes/Information.dart';
import 'package:cody/widgets/AppBarWidget.dart';
import 'package:cody/widgets/HeaderWidget.dart';
import 'package:cody/widgets/InformationCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cody/assets/styles.dart';

class AboutCOVID extends StatelessWidget {
  List<Information> aboutInformation = [
    Information(
        id: 1,
        title: 'What is COVID-19?',
        image: 'lib/images/virus.png',
        preview:
            'COVID‑19 is a respiratory disease caused by coronavirus that can be spread from person to person.',
        path: '/about'),
    Information(
        id: 2,
        title: 'Symptoms of COVID-19',
        image: 'lib/images/thermometer.png',
        preview:
            'The most common symptoms are very similar to other viruses: fever, cough, and difficulty breathing.',
        path: '/symptoms'),
    Information(
        id: 3,
        title: 'Who is at high risk for COVID‑19?',
        image: 'lib/images/old.png',
        preview:
            'Everyone is at risk of getting COVID‑19, but some people are at a higher risk of serious illness.',
        path: '/high_risk'),
    Information(
        id: 4,
        title: 'When should I see a doctor?',
        image: 'lib/images/doctor.png',
        preview:
            'Knowing when to see a doctor can keep medical care available for those who need it most.',
        path: '/consultation'),
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    /*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorBrightBlue,
    ));
*/
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 253, 1),
      appBar: AppBarWidget(title: 'About COVID-19', color: ColorBrightBlue),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          buildHeaderWidget(
            color: ColorBrightBlue,
            title: 'Things to Know About COVID-19',
            image: 'lib/images/reading.png',
            description:
                'To further understand what COVID-19 is all about, read more about what the virus is, its symptoms, who are at high risks, and when you should consult a doctor.',
          ),
          _buildAbout(aboutInformation)
        ],
      ),
    );
  }
}

SliverToBoxAdapter _buildAbout(List<Information> aboutInformation) {
  return SliverToBoxAdapter(
    child: Column(
      children: aboutInformation
          .map((about) => buildInformationCardWidget(info: about))
          .toList(),
    ),
  );
}
