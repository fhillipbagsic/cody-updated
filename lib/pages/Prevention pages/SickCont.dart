import 'file:///C:/Users/matbagsic/AndroidStudioProjects/cody/lib/widgets/PreventionSlider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cody/assets/styles.dart';

class SickCont extends StatefulWidget {
  @override
  _SickContState createState() => _SickContState();
}

class _SickContState extends State<SickCont> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Stay home except to get medical care",
        description:
            'Stay home. Most people with COVID-19 have mild illness and can recover at home without medical care. Do not leave your home, except to get medical care. Do not visit public areas.\n\nTake care of yourself. Get rest and stay hydrated. Take over-the-counter medicines, such as acetaminophen, to help you feel better.\nAvoid public transportation, ride-sharing, or taxis.',
        image: "lib/images/stay-home.png"),
    SliderPage(
        title: "Separate yourself from other people",
        description:
            'As much as possible, stay in a specific room and away from other people and pets in your home. If possible, you should use a separate bathroom. If you need to be around other people or animals in or outside of the home, wear a mask.\n\nTell your close contacts that they may have been exposed to COVID-19. An infected person can spread COVID-19 starting 48 hours (or 2 days) before the person has any symptoms or tests positive.',
        image: "lib/images/quarantine.png"),
    SliderPage(
        title: "Monitor your symptoms",
        description:
            'Keep track of your symptoms if you suspect you have COVID‑19, have been around someone who has tested positive for it, or you\’ve been diagnosed.\n\nIf you develop emergency warning signs, seek emergency care right away. These signs include: severe, constant chest pain or pressure; extreme difficulty breathing; severe, constant lightheadedness; serious disorientation or unresponsiveness; or blue-tinted face or lips.',
        image: "lib/images/thermometer.png"),
    SliderPage(
        title: "Call ahead before visiting your doctor",
        description:
            'Call ahead. Many medical visits for routine care are being postponed or done by phone or telemedicine.\n\nIf you have a medical appointment that cannot be postponed, call your doctor\’s office, and tell them you have or may have COVID-19. This will help the office protect themselves and other patients.',
        image: "lib/images/call-hospital.png"),
    SliderPage(
        title: "Wear a mask over your nose and mouth",
        description:
            'You should wear a mask over your nose and mouth if you must be around other people or animals, including pets (even at home).\n\nYou don\’t need to wear the mask if you are alone. If you can’t put on a mask (because of trouble breathing, for example), cover your coughs and sneezes in some other way. Try to stay at least 6 feet away from other people. This will help protect the people around you.',
        image: "lib/images/mask.png"),
    SliderPage(
        title: "Cover your coughs and sneezes",
        description:
            'Cover your mouth and nose with a tissue when you cough or sneeze.\n\nThrow away used tissues in a lined trash can.\n\nImmediately wash your hands with soap and water for at least 20 seconds. If soap and water are not available, clean your hands with an alcohol-based hand sanitizer that contains at least 60% alcohol.',
        image: "lib/images/cover.png"),
    SliderPage(
        title: "Clean your hands often",
        description:
          'Wash your hands often with soap and water for at least 20 seconds. This is especially important after blowing your nose, coughing, or sneezing; going to the bathroom; and before eating or preparing food.\n\nUse hand sanitizer if soap and water are not available. Use an alcohol-based hand sanitizer with at least 60% alcohol, covering all surfaces of your hands and rubbing them together until they feel dry.',
        image: "lib/images/wash-hands.png"),
    SliderPage(
        title: "Avoid sharing personal household items",
        description:
          'Do not share dishes, drinking glasses, cups, eating utensils, towels, or bedding with other people in your home.\n\nWash these items thoroughly after using them with soap and water or put in the dishwasher.',
        image: "lib/images/no-sharing.png"),
    SliderPage(
        title: "Clean all “high-touch” surfaces everyday",
        description:
          'Clean and disinfect high-touch surfaces in your “sick room” and bathroom; wear disposable gloves. Let someone else clean and disinfect surfaces in common areas, but you should clean your bedroom and bathroom, if possible.\n\nIf a caregiver or other person needs to clean and disinfect a sick person’s bedroom or bathroom, they should do so on an as-needed basis. They should wear a mask and disposable gloves prior to cleaning.',
        image: "lib/images/disinfect.png"),
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
                                ? ColorBrightGreen
                                : ColorBrightGreen.withOpacity(0.5)));
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
                      color: ColorBrightGreen,
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          'Return',
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
