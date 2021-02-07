import 'package:cody/classes/Information.dart';
import 'file:///C:/Users/matbagsic/AndroidStudioProjects/cody/lib/widgets/PreventionSlider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cody/assets/styles.dart';

class PreventionCont extends StatefulWidget {
  @override
  _PreventionContState createState() => _PreventionContState();
}

class _PreventionContState extends State<PreventionCont> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Wear a mask over your nose and mouth",
        description:
        'Masks help prevent you from getting or spreading the virus.\n\nEveryone should wear a mask in public settings and when around people who don\’t live in your household, especially when other social distancing measures are difficult to maintain.\n\nContinue to keep about 6 feet between yourself and others. The mask is not a substitute for social distancing.',
        image: "lib/images/mask.png"),
    SliderPage(
        title: "Stay 6 feet away from others",
        description:
            'The virus spreads from person to person. Physical distancing means putting space between yourself and people outside your home to prevent the transmission of the disease.\n\nPut 6 feet of distance between yourself and people who don’t live in your household.\n\nKeeping distance from others is especially important for people who are at higher risk of getting very sick.',
        image: "lib/images/distancing.png"),
    SliderPage(
        title: "Wash your hands often",
        description:
        'Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.\n\nIf soap and water are not readily available, use a hand sanitizer that contains at least 60% alcohol. Cover all surfaces of your hands and rub them together until they feel dry. Avoid touching your eyes, nose, and mouth with unwashed hands.',
        image: "lib/images/wash-hands.png"),
    SliderPage(
        title: "Cover coughs and sneezes",
        description:
        'Always cover your mouth and nose with a tissue when you cough or sneeze or use the inside of your elbow and do not spit.\n\nThrow used tissues in the trash.\n\nImmediately wash your hands with soap and water for at least 20 seconds. If soap and water are not readily available, clean your hands with a hand sanitizer that contains at least 60% alcohol.',
        image: "lib/images/cover.png"),
    SliderPage(
        title: "Clean and disinfect",
        description:
            'Commonly used surfaces should be regularly cleaned and disinfected.\n\n It\’s always a good idea to routinely clean and disinfect frequently touched surfaces like tables, doorknobs, light switches, handles, desks, toilets, faucets, and sinks. But if you have a suspected or confirmed case of COVID‑19, be vigilant about doing this daily.',
        image: "lib/images/disinfect.png"),
    SliderPage(
        title: "Monitor Your Health Daily",
        description:
        'Be alert for symptoms. Watch for fever, cough, shortness of breath, or other symptoms of COVID-19.\n\nEspecially important if you are running essential errands, going into the office or workplace, and in settings where it may be difficult to keep a physical distance of 6 feet.\n\nTake your temperature if symptoms develop.',
        image: "lib/images/monitor-health.png"),
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
