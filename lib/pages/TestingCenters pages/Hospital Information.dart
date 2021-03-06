import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Hospital.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalInformation extends StatelessWidget {

  Hospital hospitalInformation;

  HospitalInformation({this.hospitalInformation});

  @override
  Widget build(BuildContext context) {
    print(hospitalInformation.name);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 440.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    child: Image(
                      image: AssetImage(
                          '${hospitalInformation.image}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  //color: Colors.grey[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hospitalInformation.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                          letterSpacing: 0.6,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '${hospitalInformation.municipality}, ${hospitalInformation.province}',
                        style: TextStyle(fontSize: 17.0, color: Colors.grey[700]),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Ownership',
                                  style: TextStyle(
                                      letterSpacing: 0.5,
                                      color: Colors.grey[600],
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  '${hospitalInformation.ownership.toUpperCase()}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      letterSpacing: 0.7),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Type of Testing',
                                  style: TextStyle(
                                      letterSpacing: 0.5,
                                      color: Colors.grey[600],
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  '${hospitalInformation.typeOfTesting}',
                                  style: TextStyle(
                                      color: ColorBrightOrange,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      letterSpacing: 0.7),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              'License Validity',
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Colors.grey[600],
                                  fontSize: 16.0),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '${hospitalInformation.licenseValidity}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  letterSpacing: 0.7,
                                  color: ColorBrightGreen),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Visibility(
                        visible: hospitalInformation.contactNumber.length != 0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  '${hospitalInformation.contactNumber}',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                //launch();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[200],
                                ),
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 10.0, 11.0, 10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: ColorBrightGreen,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 3.0,
                                    ),
                                    Text(
                                      'Call Now',
                                      style: TextStyle(
                                          color: ColorBrightGreen,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: hospitalInformation.website.length != 0,
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  '${hospitalInformation.website}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      letterSpacing: 0.3,
                                      fontWeight: FontWeight.bold),

                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                //launch();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[200],
                                ),
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 10.0, 11.0, 10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.web_rounded,
                                      color: ColorBrightBlue,
                                      size: 20.0,
                                    ),
                                    SizedBox(
                                      width: 3.0,
                                    ),
                                    Text(
                                      'Visit Now',
                                      style: TextStyle(
                                          color: ColorBrightBlue,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: ColorBrightPurple,
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15.0,
                            letterSpacing: 1.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
