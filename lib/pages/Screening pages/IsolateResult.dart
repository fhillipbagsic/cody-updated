import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Step.dart';
import 'package:flutter/material.dart';

class IsolateResult extends StatelessWidget {
  List<Steps> steps = [
    Steps(
        id: '1',
        title: 'Avoid contact with others except to get medical care',
        description:
            'You should not go to work, school, or public areas. You should avoid public transportation and ride sharing. You should also avoid contact with those you live with. If you can, have a separate room and bathroom..'),
    Steps(
        id: '2',
        title: 'When to end isolation',
        description:
            'You should stay away from others for at least 10 days from when symptoms first appeared. Isolation can end if your symptoms improve significantly and if you have had no fever for 24 hours without the use of medicine.\n\nIsolating yourself can be hard when you’re not feeling well, but it will protect those around you.'),
    Steps(
        id: '3',
        title: 'Monitor symptoms',
        description:
        'Contact a doctor or a medical professional if your symptoms get worse.'),
    Steps(
        id: '4',
        title: 'Wear a mask around others',
        description:
        'You should wear a mask or cloth covering over your nose and mouth if you must be around other people in home or be outside of the home.'),
    Steps(
        id: '5',
        title: 'Wash hands frequently',
        description:
        'Wash hands with soap and water for at least 20 seconds. You should avoid touching your eyes, nose, and mouth with unwashed hands. If soap and water are not available, use hand sanitizer that contains at least 60% alcohol.'),
    Steps(
        id: '6',
        title: 'Rest and take care',
        description:
        'You should eat well, drink fluids, and get plenty of rest.'),
    Steps(
        id: '7',
        title: 'Testing recommended',
        description:
        'If you have not been tested yet, you should get in touch with a medical professional or your state health department about getting tested for COVID‑19.\n\nYou may also be tested for the flu at the same time.'),
  ];

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(222, 221, 226, 1),
              height: MediaQuery.of(context).size.height - 510,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            //Navigator.pushNamed(context, '/home');
                          },
                          child: Text(
                            'Done',
                            style: TextStyle(
                              color: Color.fromRGBO(29, 132, 250, 1),
                            ),
                          )),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage('lib/images/self-isolate.png'),
                      width: MediaQuery.of(context).size.width - 286,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                width: double.infinity,
                color: Color.fromRGBO(239, 238, 243, 1),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Isolate From Others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                            letterSpacing: 0.6),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'You should stay home and away from others except to get medical care. You should avoid contact with those you live with and wear a mask if you have to be near other people.',
                        style: TextStyle(fontSize: 13.0, letterSpacing: 0.3),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Your Next Steps',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.7),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        children: steps.map((e) => stepsWidget(steps: e,)).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class stepsWidget extends StatelessWidget {
  final Steps steps;

  stepsWidget({this.steps});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(6.0),
              child: Container(
                width: 25,
                height: 25,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    steps.id,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(29, 132, 250, 1)),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 8.0, left: 8.0, right: 8.0, top: 4.0),
                    child: Text(
                      steps.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          letterSpacing: 0.6),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: 8.0, left: 8.0, right: 8.0, top: 4.0),
                    child: Text(steps.description),
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
