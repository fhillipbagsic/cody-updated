import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Hospital.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HospitalList extends StatefulWidget {
  @override
  _HospitalListState createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  List<Hospital> hospitals = [
    Hospital(
      id: '1',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Muntinlupa City',
        name: 'Asian Hospital and Medical Center',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8771-9000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/asian_hospital_and_medical_center.jpg'),
    Hospital(
        id: '2',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'City of Manila',
        name: 'Chinese General Hospital	',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8711-4141',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/chinese_general_hospital.jpg'),
    Hospital(
        id: '3',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Caloocan City',
        name: 'Detoxicare Molecular Diagnostics Laboratory',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8771-9000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/detoxicare_mld.jpg'),
    Hospital(
        id: '4',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Quezon City',
        name: 'Dr. Jose N. Rodriguez Memorial Hospital and Sanitarium (Tala)',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8771-9000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/djnrmh.jpg'),
    Hospital(
        id: '5',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Makati',
        name: 'Lung Center of the Philippines (LCP)',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8771-9000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/lcp.jpg'),
    Hospital(
        id: '6',
        region: 'NCR',
        province: 'Metro Manila',
        municipality: 'Makati',
        name: 'Makati Medical Center',
        ownership: 'Private',
        typeOfTesting: 'rRT PCR',
        contactNumber: '(02) 8771-9000',
        licenseValidity: '01/01/21 - 12/31/21',
        image: 'lib/images/hospitals/mmc.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      /*statusBarColor: ColorBrightRed,*/
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.purple,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                              letterSpacing: 0.2),
                        ),
                        SizedBox(
                          height: 1.5,
                        ),
                        Text(
                          'NCR',
                          style: TextStyle(
                              fontSize: 17.0,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0,),
          ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0),
                child: Text(
                  'Hospitals',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                ),
              ),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: hospitals
                          .map((hospital) => card(
                                hospital: hospital,
                              ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final Hospital hospital;

  card({this.hospital});
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 6.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      shadowColor: Colors.grey[100],
      elevation: 3.0,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            width: 80.0,
            height: 70.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(
                    hospital.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    hospital.name,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14.5,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 7.0,),
                  Text(
                    '${hospital.municipality}, ${hospital.province}',
                    style: TextStyle(color: Colors.grey[500], fontSize: 13.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
