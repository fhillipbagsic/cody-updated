import 'file:///C:/Users/matbagsic/AndroidStudioProjects/cody/lib/widgets/AboutCovidSlider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "",
        description:
'COVID-19 is a disease caused by a new strain of coronavirus. \'CO\' stands for corona, \'VI\' for virus, and \'D\' for disease. Formerly, this disease was referred to as \'2019 novel coronavirus\' or \'2019-nCoV.\'',
        image: "lib/images/virus.png"),
    SliderPage(
        title: "",
        description:
            "The virus is thought to spread mainly between people who are in close contact with one another (about 6 feet) and through respiratory droplets produced when an infected person coughs or sneezes.",
        image: "lib/images/talking.png"),
    SliderPage(
        title: "",
        description:
            "People are most contagious when they are the sickest. But those who don’t have a lot of symptoms can still pass the virus on to others.",
        image: "lib/images/sick.png"),
    SliderPage(
        title: "",
        description:
            "There are now authorized and recommended vaccines to prevent COVID-19 around the world.",
        image: "lib/images/vaccine.png"),

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
      statusBarIconBrightness: Brightness.dark)
    );

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

/*
class About extends StatefulWidget {
/*
  List<Information> infos = [
    Information(
        id: 1,
        title: '',
        image: 'lib/images/virus.png',
        preview: '',
        description: 'COVID‑19 is a respiratory disease caused by coronavirus that can be spread from person to person. COVID‑19 is short for “coronavirus disease 2019.”'),
    Information(
        id: 1,
        title: '',
        image: 'lib/images/virus.png',
        preview: '',
        description: 'COVID‑19 is a respiratory disease caused by coronavirus that can be spread from person to person. COVID‑19 is short for “coronavirus disease 2019.”'),
    Information(
        id: 1,
        title: '',
        image: 'lib/images/virus.png',
        preview: '',
        description: 'COVID‑19 is a respiratory disease caused by coronavirus that can be spread from person to person. COVID‑19 is short for “coronavirus disease 2019.”'),
  ];
*/

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    int _currentPage = 0;
    PageController _controller = PageController();

    List<Widget> _pages = [
      SliderPage(
          title: "Keep",
          description:
          "Accept cryptocurrencies and digital assets, keep thern here, or send to orthers",
          image: "lib/images/symptoms/ache.png"),
      SliderPage(
          title: "Buy",
          description:
          "Buy Bitcoin and cryptocurrencies with VISA and MasterVard right in the App",
          image: "lib/images/symptoms/ache.png"),
      SliderPage(
          title: "Sell",
          description:
          "Sell your Bitcoin cryptocurrencies or Change with orthres digital assets or flat money",
          image: "lib/images/symptoms/ache.png"),
    ];

    _onchanged(int index) {
      setState(() {
        _currentPage = index;
      });
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'What is COVID-19',
          style: TextStyle(
            fontSize: 22,
            fontFamily: "Roboto-Bold",
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: ColorBlue2,
        elevation: 0.0,
      ),
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
                                ? Colors.yellow
                                : Colors.blue.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
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
                    "Get Started",
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
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildHeader(double screenWidth, Color pageColor) {
  return Container(
    width: screenWidth,
    margin: EdgeInsets.only(bottom: 15.0),
    padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            color: infoCardShadowColor,
          ),
        ],
        color: pageColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [

      ],
    ),
  );
}

*/
