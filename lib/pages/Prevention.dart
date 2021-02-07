import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Information.dart';
import 'package:cody/widgets/AppBarWidget.dart';
import 'package:cody/widgets/HeaderWidget.dart';
import 'package:cody/widgets/NavigatorButtonWidget.dart';
import 'package:cody/widgets/PreventionCardWidget.dart';
import 'package:cody/widgets/PreventionRowWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Prevention extends StatelessWidget {
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

  List<Information> sick_preventions = [
    Information(
      id: 1,
      title: 'Stay at home',
      image: 'lib/images/stay-home.png',
      preview:
          'Stay home. Most people with COVID-19 have mild illness and can recover at home without medical care. Do not leave your home, except to get medical care. Do not visit public areas.\n\nTake care of yourself. Get rest and stay hydrated. Take over-the-counter medicines, such as acetaminophen, to help you feel better.\nAvoid public transportation, ride-sharing, or taxis.',
    ),
    Information(
      id: 2,
      title: 'Quarantine Yourself',
      image: 'lib/images/quarantine.png',
      preview:
          'As much as possible, stay in a specific room and away from other people and pets in your home. If possible, you should use a separate bathroom. If you need to be around other people or animals in or outside of the home, wear a mask.\n\nTell your close contacts that they may have been exposed to COVID-19. An infected person can spread COVID-19 starting 48 hours (or 2 days) before the person has any symptoms or tests positive.',
    ),
    Information(
      id: 3,
      title: 'Monitor symptoms',
      image: 'lib/images/thermometer.png',
      preview:
          'Keep track of your symptoms if you suspect you have COVID‑19, have been around someone who has tested positive for it, or you\’ve been diagnosed.\n\nIf you develop emergency warning signs, seek emergency care right away. These signs include: severe, constant chest pain or pressure; extreme difficulty breathing; severe, constant lightheadedness; serious disorientation or unresponsiveness; or blue-tinted face or lips.',
    ),
    Information(
      id: 4,
      title: 'Call ahead before visiting',
      image: 'lib/images/call-hospital.png',
      preview:
          'Call ahead. Many medical visits for routine care are being postponed or done by phone or telemedicine.\n\nIf you have a medical appointment that cannot be postponed, call your doctor\’s office, and tell them you have or may have COVID-19. This will help the office protect themselves and other patients.',
    ),
    Information(
      id: 5,
      title: 'Wear a mask',
      image: 'lib/images/mask.png',
      preview:
          'You should wear a mask over your nose and mouth if you must be around other people or animals, including pets (even at home).\n\nYou don\’t need to wear the mask if you are alone. If you can’t put on a mask (because of trouble breathing, for example), cover your coughs and sneezes in some other way. Try to stay at least 6 feet away from other people. This will help protect the people around you.',
    ),
    Information(
      id: 6,
      title: 'Cover coughs & sneezes',
      image: 'lib/images/cover.png',
      preview:
          'Cover your mouth and nose with a tissue when you cough or sneeze.\n\nThrow away used tissues in a lined trash can.\n\nImmediately wash your hands with soap and water for at least 20 seconds. If soap and water are not available, clean your hands with an alcohol-based hand sanitizer that contains at least 60% alcohol.',
    ),
    Information(
      id: 7,
      title: 'Wash hands often',
      image: 'lib/images/wash-hands.png',
      preview:
          'Wash your hands often with soap and water for at least 20 seconds. This is especially important after blowing your nose, coughing, or sneezing; going to the bathroom; and before eating or preparing food.\n\nUse hand sanitizer if soap and water are not available. Use an alcohol-based hand sanitizer with at least 60% alcohol, covering all surfaces of your hands and rubbing them together until they feel dry.',
    ),
    Information(
      id: 8,
      title: 'No sharing of personal items',
      image: 'lib/images/no-sharing.png',
      preview:
          'Do not share dishes, drinking glasses, cups, eating utensils, towels, or bedding with other people in your home.\n\nWash these items thoroughly after using them with soap and water or put in the dishwasher.',
    ),
    Information(
      id: 9,
      title: 'Clean & disinfect everyday',
      image: 'lib/images/disinfect.png',
      preview:
          'Clean and disinfect high-touch surfaces in your “sick room” and bathroom; wear disposable gloves. Let someone else clean and disinfect surfaces in common areas, but you should clean your bedroom and bathroom, if possible.\n\nIf a caregiver or other person needs to clean and disinfect a sick person’s bedroom or bathroom, they should do so on an as-needed basis. They should wear a mask and disposable gloves prior to cleaning.',
    ),
  ];

  @override
  Widget build(BuildContext context) {

    /*
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorBrightGreen,
    ));
     */
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 253, 1),
      appBar: AppBarWidget(title: 'Prevention', color: ColorBrightGreen,),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          buildHeaderWidget(
            color: ColorBrightGreen,
            title: 'Protect yourself against the COVID-19',
            image: 'lib/images/prevent-covid.png',
            description:
                'Protect yourself and others around you by knowing the facts and taking appropriate precautions. Follow advice provided by your local health authority.',
          ),

          buildPreventionRowWidget(title: 'Prevent Getting Sick', path: '/prevention_cont', list: preventions,),
          buildPreventionRowWidget(title: 'If You\'re Already Sick', path: '/sick_cont', list: sick_preventions,),

        ],
      ),
    );
  }
}