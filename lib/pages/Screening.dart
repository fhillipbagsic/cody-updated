import 'package:cody/assets/styles.dart';
import 'package:cody/widgets/AppBarWidget.dart';
import 'package:cody/widgets/HeaderWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Screening extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorBrightOrange,
    ));

     */
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 253, 1),
      appBar: AppBarWidget(
        title: 'COVID-19 Screening',
        color: ColorBrightOrange,
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          buildHeaderWidget(
            color: ColorBrightOrange,
            title: 'Bit Unwell? Answer our Screening Tool',
            image: 'lib/images/screening-doctor.png',
            description:
                'This tool can help you understand what to do next about COVID-19. Let’s all look out for each other by wearing a mask, avoiding crowds, and by knowing our status.',
          ),
          _build(context),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _build(context) {
  return SliverToBoxAdapter(
    child: Column(
      children: [
        Container(
          child: Column(
            children: [
              ab(
                  image: 'lib/images/questionnaire.png',
                  description:
                      'You’ll answer a few questions about symptoms and contact with others.'),
              ab(
                  image: 'lib/images/checked.png',
                  description:
                      'Rest assured that your answers will not be shared without your permission.'),
              ab(
                  image: 'lib/images/check-mark.png',
                  description:
                      'By using this tool, you agree to its terms and that the application will not be liable for any harm relating to your use.'),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70.0),
                child: Text(
                  'Recommendations provided by this tool do not constitute medical advice and should not be used to diagnose or treat medical conditions.',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[700],
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/t&c');
                  },
                  child: Text(
                    'Read Terms and Conditions >',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.blue,
                      letterSpacing: 0.5,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 23.0,
              ),
              FlatButton(
                height: 55.0,
                color: ColorBrightOrange,
                onPressed: () {
                  Navigator.pushNamed(context, '/question_screen');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: ColorBrightOrange)),
                child: Text(
                  'Start Screening',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    letterSpacing: 0.7,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class ab extends StatelessWidget {
  final String image;
  final String description;

  ab({this.image, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      width: MediaQuery.of(context).size.width - 100,
      height: 80.0,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: Image(
              image: AssetImage(image),
              width: 50.0,
            ),
          ),
          Expanded(
            child: Text(
              description,
              style: TextStyle(fontSize: 14.0, letterSpacing: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
