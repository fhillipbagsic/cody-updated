import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Information.dart';
import 'package:cody/pages/TestingCenters%20pages/HospitalList.dart';
import 'package:cody/widgets/AppBarWidget.dart';
import 'package:cody/widgets/PreventionRowWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cody/widgets/HeaderWidget.dart';

class TestingCenters extends StatelessWidget {
  List<Information> guidances = [
    Information(
        id: 1,
        title: 'Should I get tested?',
        image: 'lib/images/question-mark.png',
        preview: ''),
    Information(
        id: 2,
        title: 'How do I get tested?',
        image: 'lib/images/covid-testing.png',
        preview: ''),
    Information(
        id: 3,
        title: 'What to expect from results?',
        image: 'lib/images/test-result.png',
        preview: ''),
    Information(
        id: 4,
        title: 'What to do while waiting for results?',
        image: 'lib/images/waiting-time.png',
        preview: ''),
  ];

  List<String> regions = [
    'All',
    'NCR',
    'Region 1',
    'Region 2',
    'Region 3',
    'Region 4A',
    'Region 4B',
    'Region 5',
    'Region 6',
    'Region 7',
    'Region 8',
    'Region 9',
    'Region 10',
    'Region 11',
    'Region 12',
    'CARAGA',
    'CAR',
    'BARMM'
  ];

  List<String> hospitaltype = ['All', 'Private', 'Public'];

  List<String> type = ['All', 'rRT PCR', 'Cartridge'];

  @override
  Widget build(BuildContext context) {
    /*
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorBrightPurple,
  ));
     */
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 245, 253, 1),
      appBar: AppBarWidget(
        title: 'Local Centers',
        color: ColorBrightPurple,
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          buildHeaderWidget(
              color: ColorBrightPurple,
              title: 'Things to Know About COVID-19',
              image: 'lib/images/reading.png',
              description:
                  'To further understand what COVID-19 is all about, read more about what the virus is, its symptoms, who are at high risks, and when you should consult a doctor.'),
          buildPreventionRowWidget(
            title: 'Testing Guidance',
            path: '/guidance_cont',
            list: guidances,
            color: ColorBrightPurple,
          ),
          FilterWidget(
            region: regions,
            hospital: hospitaltype,
            type: type,
          ),
        ],
      ),
    );
  }
}

class FilterWidget extends StatefulWidget {
  final List<String> region;
  final List<String> hospital;
  final List<String> type;
  FilterWidget({this.region, this.hospital, this.type});

  List<String> chosenFilter = ['All', 'All', 'All'];
  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  String dropdownValue1 = 'All';
  String dropdownValue2 = 'All';
  String dropdownValue3 = 'All';

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Local Testing Centers',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                  fontSize: 16.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: infoCardShadowColor,
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height - 535,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Region',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.7),
                              ),
                              // dropDownButton(
                              //   list: widget.region,
                              // )
                              Container(
                                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                                height: 35.0,
                                width: double.infinity,
                                child: Center(
                                  child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    value: dropdownValue1,
                                    elevation: 16,
                                    underline: Container(
                                      height: 1,
                                      color: Colors.transparent,
                                    ),
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue1 = newValue;
                                        widget.chosenFilter[0] = newValue;
                                      });
                                    },
                                    items: widget.region.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Center(
                                          child: Text(
                                            value,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Hospital',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.7),
                              ),
                              // dropDownButton(
                              //   list: widget.hospital,
                              // ),

                              Container(
                                margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                                height: 35.0,
                                width: double.infinity,
                                child: Center(
                                  child: DropdownButton<String>(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    value: dropdownValue2,
                                    elevation: 16,
                                    underline: Container(
                                      height: 1,
                                      color: Colors.transparent,
                                    ),
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue2 = newValue;
                                        widget.chosenFilter[1] = newValue;
                                      });
                                    },
                                    items: widget.hospital.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Center(
                                          child: Text(
                                            value,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Test Type',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.7),
                              ),
                              // dropDownButton(
                              //   list: widget.type,
                              // ),

                          Container(
                            margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                            height: 35.0,
                            width: double.infinity,
                            child: Center(
                              child: DropdownButton<String>(
                                icon: Icon(Icons.keyboard_arrow_down),
                                value: dropdownValue3,
                                elevation: 16,
                                underline: Container(
                                  height: 1,
                                  color: Colors.transparent,
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue3 = newValue;
                                    widget.chosenFilter[2] = newValue;
                                  });
                                },
                                items: widget.type.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Center(
                                      child: Text(
                                        value,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 7.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: FlatButton(
                        height: 40.0,
                        color: ColorBrightPurple,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  HospitalList(filter: widget.chosenFilter),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: ColorBrightPurple)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Search >',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class dropDownButton extends StatefulWidget {
  final List<String> list;
  dropDownButton({this.list});
  @override
  _dropDownButtonState createState() => _dropDownButtonState();
}

class _dropDownButtonState extends State<dropDownButton> {
  String dropdownValue = 'All';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      height: 35.0,
      width: double.infinity,
      child: Center(
        child: DropdownButton<String>(
          icon: Icon(Icons.keyboard_arrow_down),
          value: dropdownValue,
          elevation: 16,
          underline: Container(
            height: 1,
            color: Colors.transparent,
          ),
          style: TextStyle(
            color: Colors.black,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: widget.list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
