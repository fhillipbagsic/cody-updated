import 'package:cody/widgets/AppBarWidget.dart';
import 'package:cody/widgets/InformationCardWidget.dart';
import 'package:cody/widgets/NavigatorButtonWidget.dart';
import 'package:cody/widgets/PreventionCardWidget.dart';
import 'package:cody/widgets/PreventionRowWidget.dart';
import 'package:flutter/material.dart';
import 'package:cody/classes/Information.dart';
import 'package:flutter/services.dart';
import 'package:cody/assets/styles.dart';
import 'package:cody/widgets/HeaderWidget.dart';

class Dashboard extends StatelessWidget {

  List<Information> infos = [
    Information(
      id: 1,
      title: 'What is COVID-19?',
      image: 'lib/images/virus.png',
      preview:
          'COVID‑19 is a respiratory disease caused by coronavirus that can be spread from person to person.',
      path: '/about',
    ),
    Information(
      id: 2,
      title: 'Symptoms of COVID-19',
      image: 'lib/images/thermometer.png',
      preview:
          'The most common symptoms are very similar to other viruses: fever, cough, and difficulty breathing.',
      path: '/symptoms',
    ),

    Information(
        id: 4,
        title: 'What To Do If You\'re Sick',
        image: 'lib/images/mask.png',
        preview:
            'Isolate yourself from your family to prevent spread to them and the people that they may have contact with.',
        path: '/sick_cont'),
  ];
  List<Information> preventions = [
    Information(
      id: 1,
      title: 'Wear a mask',
      image: 'lib/images/mask.png',
      preview:
      'Masks help prevent you from getting or spreading the virus.\n\nEveryone should wear a mask in public settings and when around people who don\’t live in your household, especially when other social distancing measures are difficult to maintain.\n\nContinue to keep about 6 feet between yourself and others. The mask is not a substitute for social distancing.',
    ),
    Information(
      id: 2,
      title: 'Practice social distancing',
      image: 'lib/images/distancing.png',
      preview:
      'The virus spreads from person to person. Physical distancing means putting space between yourself and people outside your home to prevent the transmission of the disease.\n\nPut 6 feet of distance between yourself and people who don’t live in your household.\n\nKeeping distance from others is especially important for people who are at higher risk of getting very sick.',
    ),
    Information(
      id: 3,
      title: 'Wash hands often',
      image: 'lib/images/wash-hands.png',
      preview:
      'Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.\n\nIf soap and water are not readily available, use a hand sanitizer that contains at least 60% alcohol. Cover all surfaces of your hands and rub them together until they feel dry. Avoid touching your eyes, nose, and mouth with unwashed hands.',
    ),
    Information(
      id: 4,
      title: 'Cover coughs & sneezes',
      image: 'lib/images/cover.png',
      preview:
      'Always cover your mouth and nose with a tissue when you cough or sneeze or use the inside of your elbow and do not spit.\n\nThrow used tissues in the trash.\n\nImmediately wash your hands with soap and water for at least 20 seconds. If soap and water are not readily available, clean your hands with a hand sanitizer that contains at least 60% alcohol.',
    ),
    Information(
      id: 5,
      title: 'Clean & disinfect everyday',
      image: 'lib/images/disinfect.png',
      preview:
      'Commonly used surfaces should be regularly cleaned and disinfected.\n\n It\’s always a good idea to routinely clean and disinfect frequently touched surfaces like tables, doorknobs, light switches, handles, desks, toilets, faucets, and sinks. But if you have a suspected or confirmed case of COVID‑19, be vigilant about doing this daily.',
    ),
    Information(
      id: 6,
      title: 'Monitor health daily',
      image: 'lib/images/monitor-health.png',
      preview:
      'Be alert for symptoms. Watch for fever, cough, shortness of breath, or other symptoms of COVID-19.\n\nEspecially important if you are running essential errands, going into the office or workplace, and in settings where it may be difficult to keep a physical distance of 6 feet.\n\nTake your temperature if symptoms develop.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      /*statusBarColor: ColorBrightRed,*/
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 253, 1),
      appBar: AppBarWidget(title: 'Home', color: ColorBrightRed),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          buildHeaderWidget(
              color: ColorBrightRed,
              title: 'Welcome to CODY - Your COVID Buddy',
              image: 'lib/images/doctor1.png',
              description:
                  'CODY helps you guide through the pandemic by providing an up-to-date rundown of the COVID-19 and how you can protect yourself against it.'),
          _buildStatsGrid(),
          buildPreventionRowWidget(title: 'Prevent Getting Sick', path: '/prevention_cont', list: preventions, color: ColorBrightRed,),

          _buildInformation(infos),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _buildStatsGrid() {
  return SliverToBoxAdapter(
    child: Container(
      margin: EdgeInsets.fromLTRB(17.0, 0, 17.0, 20.0),
      height: 230.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatsCard('Philippines Total Cases', '348698', ColorBrightOrange),
                _buildStatsCard(
                    'Recovery Rate', '84.36%', ColorBrightYellow),
              ],
            ),
          ),
          SizedBox(
            height: 13.0,
          ),
          Container(
              margin: EdgeInsets.only(left: 8.0),
              child: Text(
                'Philippines Statistics',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                    fontSize: 16.0),
              )),
          Flexible(
            child: Row(
              children: [
                _buildStatsCard('Active Cases', '48040', ColorBrightBlue),
                _buildStatsCard('Recoveries', '294161', ColorBrightGreen),
                _buildStatsCard('Deaths', '6493', ColorBrightRed)
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Expanded _buildStatsCard(String title, String count, Color color) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10.0,
              color: infoCardShadowColor),
        ],
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
              fontSize: 12.0,
              letterSpacing: .30,
            ),
          ),
          Text(
            count,
            style: TextStyle(
                color: ColorBlack, fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildInformation(List<Information> infos) {
  return SliverToBoxAdapter(
    child: Column(
      children:
          infos.map((info) => buildInformationCardWidget(info: info)).toList(),
    ),
  );
}

