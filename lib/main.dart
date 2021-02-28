import 'package:cody/pages/About-COVID%20pages/About.dart';
import 'package:cody/pages/About-COVID%20pages/Consultation.dart';
import 'package:cody/pages/About-COVID%20pages/High_Risk.dart';
import 'package:cody/pages/About-COVID%20pages/Symptoms.dart';
import 'package:cody/pages/Home.dart';
import 'package:cody/pages/Prevention%20pages/PreventionCont.dart';
import 'package:cody/pages/Prevention%20pages/SickCont.dart';
import 'package:cody/pages/Screening%20pages/ActiveMonitoringResult.dart';
import 'package:cody/pages/Screening%20pages/CaseManagementResult.dart';
import 'package:cody/pages/Screening%20pages/EmergencyResult.dart';
import 'package:cody/pages/Screening%20pages/QuestionForm.dart';
import 'package:cody/pages/Screening%20pages/SelfMonitoringResult.dart';
import 'package:cody/pages/Screening%20pages/Terms&Condition.dart';
import 'package:cody/pages/Screening%20pages/UnderageResult.dart';
import 'package:cody/pages/Screening.dart';
import 'package:cody/pages/TestingCenters%20pages/GuidanceCont.dart';
import 'package:cody/pages/TestingCenters%20pages/Hospital%20Information.dart';
import 'package:cody/pages/TestingCenters%20pages/HospitalList.dart';
import 'package:cody/pages/TestingCenters.dart';
import 'package:cody/pages/information_pages/Result.dart';
import 'package:flutter/material.dart';
import 'package:cody/pages/About-COVID.dart';
import 'package:cody/pages/Screening pages/IsolateResult.dart';
import 'pages/Screening pages/ActiveMonitoringResult.dart';
import 'pages/Screening pages/CaseManagementResult.dart';
import 'pages/Screening pages/SelfMonitoringResult.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto-Regular'),
    home: Home(),
    routes: {
      '/home': (context) => Home(),
      '/about_covid': (context) => AboutCOVID(),
      '/screening': (context) => Screening(),
      '/about': (context) => About(),
      '/symptoms': (context) => Symptoms(),
      '/high_risk': (context) => HighRisk(),
      '/consultation': (context) => Consultation(),
      '/prevention_cont': (context) => PreventionCont(),
      '/sick_cont': (context) => SickCont(),
      '/t&c': (context) => TermsAndCondition(),
      '/question_screen': (context) => QuestionForm(),
      '/result_form': (context) => ResultForm(),
      '/emergency_result': (context) => EmergencyResult(),
      '/underage_result': (context) => UnderageResult(),
      '/isolate_result': (context) => IsolateResult(),
      '/self_monitoring_result': (context) => SelfMonitoringResult(),
      '/active_monitoring_result': (context) => ActiveMonitoringResult(),
      '/case_management_result': (context) => CaseManagementResult(),
      '/guidance_cont': (context) => GuidanceCont(),
      '/hospital_list': (context) => HospitalList(),
    },
  ));

}
