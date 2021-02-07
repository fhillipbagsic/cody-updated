import 'package:cody/classes/Information.dart';
import 'file:///C:/Users/matbagsic/AndroidStudioProjects/cody/lib/widgets/AboutCovidSlider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cody/assets/styles.dart';

class HighRisk extends StatefulWidget {
  @override
  _HighRiskState createState() => _HighRiskState();
}

class _HighRiskState extends State<HighRisk> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "",
        description:
            'People in their 50s are at higher risk for severe illness than people in their 40s. Similarly, people in their 60s or 70s are, in general, at higher risk for severe illness than people in their 50s. The greatest risk for severe illness from COVID-19 is among those aged 85 or older.',
        image: "lib/images/old.png"),
    SliderPage(
        title: "",
        description:
            'Adults of any age with certain underlying medical conditions are at increased risk for severe illness from the virus that causes COVID-19. Severe illness from COVID-19 is defined as hospitalization, admission to the ICU, intubation or mechanical ventilation, or death.',
        image: "lib/images/condition.png"),
    SliderPage(
        title: "",
        description:
        'Pregnant people are at an increased risk for severe illness from COVID-19 and death, compared to non-pregnant people. Additionally, pregnant people with COVID-19 might be at increased risk for other adverse outcomes, such as preterm birth (delivering the baby earlier than 37 weeks).',
        image: "lib/images/pregnant.png"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));

     */
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.blue
                                : Colors.blue.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  if (_currentPage == _pages.length - 1) {
                    Navigator.of(context).pop();
                  } else {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuint);
                  }
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 70,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 75,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          "Return",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: (!(_currentPage == _pages.length - 1))
                      ? Text(
                          'Back',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, letterSpacing: 1.0),
                        )
                      : Text('')),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
