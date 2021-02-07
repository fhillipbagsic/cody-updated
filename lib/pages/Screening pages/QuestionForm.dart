import 'package:cody/assets/styles.dart';
import 'package:cody/classes/Question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionForm extends StatefulWidget {
  int position = 0;
  List<Question> question = [
    Question(
        id: 1,
        question: 'Is this an emergency? ',
        description:
            'Stop and call 911 if you are experiencing: Severe, constant chest, pain or pressure, Extreme difficulty breathing, Severe, constant lightheadedness, Serious disorientation or unresponsiveness,Blue-tinted face or lips.',
        choices: [
          'I\'m experiencing at least one of these',
          'I do not have any of these'
        ]),
    Question(
        id: 2,
        question: 'How old are you?',
        description: '',
        choices: ['Under 18', 'Between 18 and 64', '65 or older']),
    Question(
        // COVID SYMPTOMS
        id: 3,
        question:
            'Have you recently started experiencing any of these symptoms?',
        description: 'Select all that apply.',
        choices: [
          'Fever or chills',
          'Mild or moderate difficulty breathing',
          'New or worsening cough',
          'Sudden loss of taste or smell',
          'Sore throat',
          'Vomiting or diarrhea',
          'Unexplained, significant fatigue or aching throughout the body',
          'None of the above'
        ]),
    Question(
        // SYMPTOM SEVERITY
        id: 4,
        question: 'How severe are your symptoms?',
        description: '',
        choices: [
          'Symptoms have little to no impact',
          'Symptoms are having some impact',
          'Symptoms are having a major impact'
        ]),
    Question(
        // RISK EXPOSURE
        id: 5,
        question: 'In the last 14 days, did any of these apply to you?',
        description: 'Select all that apply.',
        choices: [
          'I lived with someone who has COVID-19',
          'I cared for someone who has COVID-19',
          'For at least 15 minutes, I was within 6 feet of someone who has COVID-19',
          'I might have been exposed to COVID-19',
          'I\'ve had known exposure to COVID-19'
        ]),
    Question(
        // TEST FOR COVID-19
        id: 6,
        question: 'In the last 10 days, have you been tested for COVID‑19?',
        description:
            'Only include your most recent saliva, oral swab, or nasal swab test.',
        choices: [
          'I was tested and my result was positive for COVID-19',
          'I was tested and my result was negative for COVID-19',
          'I was tested but I have not yet received my test results',
          'I have not been tested in the last 10 days'
        ]),
  ];
  List<String> q1answer = new List(1);
  List<bool> q1choicestate = [false, false];

  List<String> q2answer = new List(1);
  List<bool> q2choicestate = [false, false, false];

  List<String> q3answer = new List();
  List<bool> q3choicestate = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  List<String> q4answer = new List(1);
  List<bool> q4choicestate = [false, false, false];

  List<String> q5answer = new List(1);
  List<bool> q5choicestate = [false, false, false, false, false];

  List<String> q6answer = new List(1);
  List<bool> q6choicestate = [false, false, false, false];

  @override
  _QuestionFormState createState() => _QuestionFormState();
}

class _QuestionFormState extends State<QuestionForm> {
  @override
  Widget build(BuildContext context) {
    List<List<String>> answers = [
      widget.q1answer,
      widget.q2answer,
      widget.q3answer,
      widget.q4answer,
      widget.q5answer,
      widget.q6answer
    ];
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.cancel,
                      color: ColorBrightOrange,
                    ),
                  ),
                ],
              ),
              display(widget.position),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      primary: ColorBrightOrange,
                      minimumSize: Size(MediaQuery.of(context).size.width - 80,
                          MediaQuery.of(context).size.height - 635),
                    ),
                    onPressed: () {
                      print(widget.position);
                      setState(() {

                        if(answers[0][0] == 'I\'m experiencing at least one of these') {
                            Navigator.pushReplacementNamed(context, '/emergency_result');
                        }
                        if(answers[1][0] == 'Under 18') {
                          Navigator.pushReplacementNamed(context, '/underage_result');
                        }
                        if (widget.position != 2 && widget.position < 5) {
                          if (answers[widget.position][0] == null) {
                            print('choose first');
                          } else {
                            if (widget.position < widget.question.length - 1) {
                              widget.position++;
                            }
                          }
                        } else if(widget.position == 2){
                          if (answers[widget.position].isEmpty) {
                            print('choose first');
                          } else {
                            widget.position++;
                          }
                        } else {
                          if(!answers[2].contains('None of the above')) {
                            if(answers[3][0] == 'Symptoms are having a major impact') {
                              if(answers[5][0] == 'I have not been tested in the last 10 days') {
                                Navigator.pushReplacementNamed(context, '/case_management_result');
                              } else {
                                Navigator.pushReplacementNamed(context, '/isolate_result');
                              }
                            } else {
                              if(answers[5][0] == 'I was tested and my result was positive for COVID-19') {
                                Navigator.pushReplacementNamed(context, '/isolate_result');
                              } else {
                                Navigator.pushReplacementNamed(context, '/active_monitoring_result');
                              }
                            }
                          } else {
                            if(answers[4][0] == 'I lived with someone who has COVID-19'|| answers[4][0] == 'I cared for someone who has COVID-19' || answers[4][0] == 'For at least 15 minutes, I was within 6 feet of someone who has COVID-19' || answers[4][0] == 'I might have been exposed to COVID-19') {
                              if(answers[5][0] == 'I was tested and my result was positive for COVID-19' || answers[5][0] == 'I was tested but I have not yet received my test results') {
                                Navigator.pushReplacementNamed(context, '/isolate_result');
                              } else {
                                Navigator.pushReplacementNamed(context, '/active_monitoring_result');
                              }
                            } else {
                              if(answers[5][0] == 'I was tested and my result was positive for COVID-19' || answers[5][0] == 'I was tested but I have not yet received my test results') {
                                Navigator.pushReplacementNamed(context, '/isolate_result');
                              } else {
                                Navigator.pushReplacementNamed(context, '/self_monitoring_result');
                              }
                            }
                          }

                        }
                      });
                    },
                    child: widget.position != 5 ? Text('Next Question') : Text('Submit'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      primary: Colors.grey[200],
                      minimumSize: Size(MediaQuery.of(context).size.width - 80,
                          MediaQuery.of(context).size.height - 635),
                    ),
                    onPressed: () {
                      setState(() {
                        if (widget.position > 0) {
                          widget.position--;
                        }
                      });
                    },
                    child: Text(
                      'Previous Question',
                      style: TextStyle(color: ColorBrightOrange),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget display(int pos) {
    if (pos == 0) {
      return QuestionOneForm(
        question: widget.question[pos],
        answer: widget.q1answer,
        choicestate: widget.q1choicestate,
      );
    } else if (pos == 1) {
      return QuestionTwoForm(
        question: widget.question[pos],
        answer: widget.q2answer,
        choicestate: widget.q2choicestate,
      );
    } else if (pos == 2) {
      return QuestionThreeForm(
        question: widget.question[pos],
        answer: widget.q3answer,
        choicestate: widget.q3choicestate,
      );
    } else if (pos == 3) {
      return QuestionFourForm(
        question: widget.question[pos],
        answer: widget.q4answer,
        choicestate: widget.q4choicestate,
      );
    } else if (pos == 4) {
      return QuestionFiveForm(
        question: widget.question[pos],
        answer: widget.q5answer,
        choicestate: widget.q5choicestate,
      );
    } else if (pos == 5) {
      return QuestionSixForm(
        question: widget.question[pos],
        answer: widget.q6answer,
        choicestate: widget.q6choicestate,
      );
    }
  }
}

class QuestionOneForm extends StatefulWidget {
  final Question question;
  final List<String> answer;
  final List<bool> choicestate;
  const QuestionOneForm({Key key, this.question, this.answer, this.choicestate})
      : super(key: key);
  @override
  _QuestionOneFormState createState() => _QuestionOneFormState();
}

class _QuestionOneFormState extends State<QuestionOneForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: MediaQuery.of(context).size.height - 200.0,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.question.description,
            style: TextStyle(letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[0];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = true;
                          widget.choicestate[1] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[0] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[0],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[1];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[1] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[1],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionTwoForm extends StatefulWidget {
  final Question question;
  final List<String> answer;
  final List<bool> choicestate;
  const QuestionTwoForm({Key key, this.question, this.answer, this.choicestate})
      : super(key: key);

  @override
  _QuestionTwoFormState createState() => _QuestionTwoFormState();
}

class _QuestionTwoFormState extends State<QuestionTwoForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: MediaQuery.of(context).size.height - 200.0,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.question.description,
            style: TextStyle(letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[0];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = true;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[0] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[0],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[1];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = true;
                          widget.choicestate[2] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[1] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[1],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[2];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[2] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[2],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionThreeForm extends StatefulWidget {
  final Question question;
  final List<String> answer;
  final List<bool> choicestate;

  const QuestionThreeForm(
      {Key key, this.question, this.answer, this.choicestate})
      : super(key: key);

  @override
  _QuestionThreeFormState createState() => _QuestionThreeFormState();
}

class _QuestionThreeFormState extends State<QuestionThreeForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: MediaQuery.of(context).size.height - 200.0,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.question.description,
            style: TextStyle(letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (widget.answer
                            .contains(widget.question.choices[0])) {
                          widget.answer.removeAt(widget.answer
                              .indexOf(widget.question.choices[0]));
                        } else {
                          widget.answer.add(widget.question.choices[0]);
                        }
                        if(widget.answer.contains(widget.question.choices[7])) {
                          widget.answer.removeAt(widget.answer.indexOf(widget.question.choices[7]));
                        }
                        print(widget.answer);
                        setState(() {
                          widget.choicestate[0] == true
                              ? widget.choicestate[0] = false
                              : widget.choicestate[0] = true;
                          widget.choicestate[7] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[0] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[0],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (widget.answer
                            .contains(widget.question.choices[1])) {
                          widget.answer.removeAt(widget.answer
                              .indexOf(widget.question.choices[1]));
                        } else {
                          widget.answer.add(widget.question.choices[1]);
                        }
                        if(widget.answer.contains(widget.question.choices[7])) {
                          widget.answer.removeAt(widget.answer.indexOf(widget.question.choices[7]));
                        }
                        print(widget.answer);

                        setState(() {
                          widget.choicestate[1] == true
                              ? widget.choicestate[1] = false
                              : widget.choicestate[1] = true;
                          widget.choicestate[7] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[1] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[1],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (widget.answer
                            .contains(widget.question.choices[2])) {
                          widget.answer.removeAt(widget.answer
                              .indexOf(widget.question.choices[2]));
                        } else {
                          widget.answer.add(widget.question.choices[2]);
                        }
                        if(widget.answer.contains(widget.question.choices[7])) {
                          widget.answer.removeAt(widget.answer.indexOf(widget.question.choices[7]));
                        }
                        print(widget.answer);

                        setState(() {
                          widget.choicestate[2] == true
                              ? widget.choicestate[2] = false
                              : widget.choicestate[2] = true;
                          widget.choicestate[7] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[2] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[2],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (widget.answer
                            .contains(widget.question.choices[3])) {
                          widget.answer.removeAt(widget.answer
                              .indexOf(widget.question.choices[3]));
                        } else {
                          widget.answer.add(widget.question.choices[3]);
                        }
                        if(widget.answer.contains(widget.question.choices[7])) {
                          widget.answer.removeAt(widget.answer.indexOf(widget.question.choices[7]));
                        }
                        print(widget.answer);

                        setState(() {
                          widget.choicestate[3] == true
                              ? widget.choicestate[3] = false
                              : widget.choicestate[3] = true;
                          widget.choicestate[7] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[3] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[3],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (widget.answer
                            .contains(widget.question.choices[4])) {
                          widget.answer.removeAt(widget.answer
                              .indexOf(widget.question.choices[4]));
                        } else {
                          widget.answer.add(widget.question.choices[4]);
                        }
                        if(widget.answer.contains(widget.question.choices[7])) {
                          widget.answer.removeAt(widget.answer.indexOf(widget.question.choices[7]));
                        }
                        print(widget.answer);

                        setState(() {
                          widget.choicestate[4] == true
                              ? widget.choicestate[4] = false
                              : widget.choicestate[4] = true;
                          widget.choicestate[7] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[4] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[4],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (widget.answer
                            .contains(widget.question.choices[5])) {
                          widget.answer.removeAt(widget.answer
                              .indexOf(widget.question.choices[5]));
                        } else {
                          widget.answer.add(widget.question.choices[5]);
                        }
                        if(widget.answer.contains(widget.question.choices[7])) {
                          widget.answer.removeAt(widget.answer.indexOf(widget.question.choices[7]));
                        }
                        print(widget.answer);

                        setState(() {
                          widget.choicestate[5] == true
                              ? widget.choicestate[5] = false
                              : widget.choicestate[5] = true;
                          widget.choicestate[7] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[5] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[5],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (widget.answer
                            .contains(widget.question.choices[6])) {
                          widget.answer.removeAt(widget.answer
                              .indexOf(widget.question.choices[6]));
                        } else {
                          widget.answer.add(widget.question.choices[6]);
                        }
                        if(widget.answer.contains(widget.question.choices[7])) {
                          widget.answer.removeAt(widget.answer.indexOf(widget.question.choices[7]));
                        }
                        print(widget.answer);

                        setState(() {
                          widget.choicestate[6] == true
                              ? widget.choicestate[6] = false
                              : widget.choicestate[6] = true;
                          widget.choicestate[7] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[6] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[6],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {

                        if (widget.answer
                            .contains(widget.question.choices[7])) {
                          widget.answer.clear();
                        } else {
                          widget.answer.clear();
                          widget.answer.add(widget.question.choices[7]);
                        }
                        print(widget.answer);

                        setState(() {
                          widget.choicestate[7] == true
                              ? widget.choicestate[7] = false
                              : widget.choicestate[7] = true;
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = false;
                          widget.choicestate[4] = false;
                          widget.choicestate[5] = false;
                          widget.choicestate[6] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[7] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[7],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionFourForm extends StatefulWidget {
  final Question question;
  final List<String> answer;
  final List<bool> choicestate;

  const QuestionFourForm(
      {Key key, this.question, this.answer, this.choicestate})
      : super(key: key);

  @override
  _QuestionFourFormState createState() => _QuestionFourFormState();
}

class _QuestionFourFormState extends State<QuestionFourForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: MediaQuery.of(context).size.height - 200.0,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.question.description,
            style: TextStyle(letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[0];
                        print(widget.answer[0]);

                        setState(() {
                          widget.choicestate[0] = true;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[0] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[0],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[1];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = true;
                          widget.choicestate[2] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[1] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[1],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[2];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[2] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[2],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionFiveForm extends StatefulWidget {
  final Question question;
  final List<String> answer;
  final List<bool> choicestate;

  const QuestionFiveForm(
      {Key key, this.question, this.answer, this.choicestate})
      : super(key: key);

  @override
  _QuestionFiveFormState createState() => _QuestionFiveFormState();
}

class _QuestionFiveFormState extends State<QuestionFiveForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: MediaQuery.of(context).size.height - 200.0,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.question.description,
            style: TextStyle(letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[0];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = true;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = false;
                          widget.choicestate[4] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[0] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[0],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[1];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = true;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = false;
                          widget.choicestate[4] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[1] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[1],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[2];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = true;
                          widget.choicestate[3] = false;
                          widget.choicestate[4] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[2] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[2],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[3];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = true;
                          widget.choicestate[4] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[3] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[3],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[4];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = false;
                          widget.choicestate[4] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[4] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[4],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionSixForm extends StatefulWidget {
  final Question question;
  final List<String> answer;
  final List<bool> choicestate;

  const QuestionSixForm({Key key, this.question, this.answer, this.choicestate})
      : super(key: key);

  @override
  _QuestionSixFormState createState() => _QuestionSixFormState();
}

class _QuestionSixFormState extends State<QuestionSixForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: MediaQuery.of(context).size.height - 200.0,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.question.description,
            style: TextStyle(letterSpacing: 0.25),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[0];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = true;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[0] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[0],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[1];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = true;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[1] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[1],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[2];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = true;
                          widget.choicestate[3] = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[2] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[2],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        widget.answer[0] = widget.question.choices[3];
                        print(widget.answer[0]);
                        setState(() {
                          widget.choicestate[0] = false;
                          widget.choicestate[1] = false;
                          widget.choicestate[2] = false;
                          widget.choicestate[3] = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        primary: widget.choicestate[3] == true
                            ? ColorBrightOrange
                            : Colors.white,
                        minimumSize: Size(
                            MediaQuery.of(context).size.width - 30,
                            MediaQuery.of(context).size.height - 615),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.question.choices[3],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
