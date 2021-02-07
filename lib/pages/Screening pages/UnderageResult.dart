import 'package:cody/assets/styles.dart';
import 'package:flutter/material.dart';

class UnderageResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 50.0,left: 35.0, right:35.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                'This tool is intended for people who are at least 18 years old',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 0.5),
              ),
              SizedBox(height: 10.0,),
              Text('Visit the CDC site to get information about COVID‑19 and younger people.',style: TextStyle(fontSize: 16.0,letterSpacing: 0.5),),

              SizedBox(height: 180.0,),
              Align(
                alignment: Alignment.center,
                child: Column(children: [
                  FlatButton(
                    height: 55.0,
                    minWidth: MediaQuery.of(context).size.width - 230,
                    color: Color.fromRGBO(255,56,56,1),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/question_screen');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'Answer again',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  FlatButton(
                    height: 55.0,
                    minWidth: MediaQuery.of(context).size.width - 230,
                    color: Color.fromRGBO(195,0,71,1),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'Go to Home',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ),
                ],),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
