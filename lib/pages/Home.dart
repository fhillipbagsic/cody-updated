import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:cody/pages/Dashboard.dart';
import 'package:cody/pages/About-COVID.dart';
import 'package:cody/pages/Prevention.dart';
import 'package:cody/pages/Screening.dart';
import 'package:cody/pages/TestingCenters.dart';
import 'package:cody/widgets/PlaceholderWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Dashboard()),
    PlaceholderWidget(AboutCOVID()),
    PlaceholderWidget(Prevention()),
    PlaceholderWidget(Screening()),
    PlaceholderWidget(TestingCenters()),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(

        child: _children[_currentIndex],
      ),
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 0,
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(backgroundColor: Colors.red, icon: Icon(Icons.dashboard_outlined, color: Colors.black,), activeIcon: Icon(Icons.dashboard_rounded, color: Colors.red,), title: Text("Home")),
          BubbleBottomBarItem(backgroundColor: Colors.blue, icon: Icon(Icons.coronavirus_outlined, color: Colors.black,), activeIcon: Icon(Icons.coronavirus_rounded, color: Colors.blue,), title: Text("COVID-19")),
          BubbleBottomBarItem(backgroundColor: Colors.green, icon: Icon(Icons.masks_outlined, color: Colors.black,), activeIcon: Icon(Icons.masks_rounded, color: Colors.green,), title: Text("Prevention")),
          BubbleBottomBarItem(backgroundColor: Colors.orange, icon: Icon(Icons.sick_outlined, color: Colors.black,), activeIcon: Icon(Icons.sick_rounded, color: Colors.orange,), title: Text("Screening")),
          BubbleBottomBarItem(backgroundColor: Colors.purple, icon: Icon(Icons.local_hospital_outlined, color: Colors.black,), activeIcon: Icon(Icons.local_hospital_rounded, color: Colors.purple,), title: Text("Centers")),

        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}