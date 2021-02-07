
import 'package:cody/classes/Information.dart';
import 'file:///C:/Users/matbagsic/AndroidStudioProjects/cody/lib/widgets/PreventionSlider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cody/assets/styles.dart';

class GuidanceCont extends StatefulWidget {
  @override
  _GuidanceContState createState() => _GuidanceContState();
}

class _GuidanceContState extends State<GuidanceCont> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: 'Should you get tested?',
        description:
        'Knowing when to get tested can keep testing resources available for those who need it most.\n\nThe most up-to-date way to assess your best next steps is to complete our Screening Tool.',
        image: 'lib/images/question-mark.png'),
    SliderPage(
        title: 'How do I get tested?',
        description:
        'Different providers, states, and local health departments may have different testing recommendations.\nTesting is limited-availability across the country and is currently being prioritized for healthcare workers, emergency medical service providers, police, and other essential workers.\nIf you or someone you know has COVID 19 symptoms and needs to get tested, call your doctor. They will tell you what to do next.',
        image: 'lib/images/covid-testing.png'),
    SliderPage(
        title: 'What can I expect from test results?',
        description:
        'If you test positive and have mild symptoms, your doctor may advise you to care for yourself at home. \nIf you test positive and have severe symptoms, your doctor will tell you what to do. \nA negative test means you were probably not infected at the time of testing. However, it is possible that you were tested early into your infection and that you could test positive later. You could also be exposed at any time and develop the illness.',
        image: 'lib/images/test-result.png'),
    SliderPage(
        title: 'What can I do while waiting for test results?',
        description:
        'While waiting for test results, seek emergency care right away if you develop emergency warning signs, which include: severe, constant chest pain or pressure; extreme difficulty breathing; severe, constant lightheadedness; serious disorientation or unresponsiveness; or blue-tinted face or lips. \n\nIf your symptoms worsen, call your doctor and tell them your symptoms. They will tell you what to do next.',
        image: 'lib/images/waiting-time.png'),
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
                                ? ColorBrightPurple
                                : ColorBrightPurple.withOpacity(0.5)));
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
                      color: ColorBrightPurple,
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

