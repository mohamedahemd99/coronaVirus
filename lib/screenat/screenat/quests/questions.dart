// @dart=2.9
// ignore_for_file: must_be_immutable, deprecated_member_use
import 'package:covid_infected_helper/constants.dart';
import 'package:covid_infected_helper/screenat/screenat/quests/answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../info.dart';
import '../Home/home.dart';
import 'question_card.dart';

//for appbar
class Questions extends StatelessWidget {
  const Questions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      // drawer: const NavBar(),
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: bg,
          statusBarBrightness: Brightness.dark,
        ),
        flexibleSpace: Container(decoration: bgGradient),
        title: image,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: bg),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: bg),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ScreenQ(),
    );
  }
}

class ScreenQ extends StatefulWidget {
  ScreenQ({Key key}) : super(key: key);

  @override
  State<ScreenQ> createState() => _ScreenQState();
}

class _ScreenQState extends State<ScreenQ> {
  int total = 0;
  int current = 0;
  bool show = false;
  final List<Map<String, Object>> questionList = [
    {
      'text': ' Have you had a fever above 38 Celsius in 24 hours? ',
      'answer': [
        {'text': 'Yes', 'score': 15},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you have chills?',
      'answer': [
        {'text': 'Yes', 'score': 15},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you have diarhea?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you have a difficulty breathing? ',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you have a persistent cough?',
      'answer': [
        {'text': 'Yes', 'score': 15},
        {'text': 'No', 'score': 00},
      ]
    },
    {
      'text': ' Do you have pain in the extremities?',
      'answer': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you feel tired and weak?',
      'answer': [
        {'text': 'Yes', 'score': 15},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Are you currently taking steriods?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you suffer from obesity?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' If you are a woman, are you pregnant?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you suffer from heart disease?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you suffer from chronic lung diseases?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you feel short of breath faster than usual?',
      'answer': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Did you get a headache?',
      'answer': [
        {'text': 'Yes', 'score': 15},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text': ' Do you have sore throat?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    {
      'text':
          ' Are you currently taking immunosuppressants? In case you suffer from immunosuppression as a result of an operation,...etc?',
      'answer': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 0},
      ]
    },
    /*  ' Have you had a fever above 38 Celsius in 24 hours? ',
    'Do you have chills?',
    'Do you feel tired and weak?',
    'Do you have pain in the extremities?',
    'Do you have a persistent cough?',
    'Do you have a diffivulty breathing?',
    'Do you have diarhea?',
    ]]
    'Do you have sore throat?',
    'Did you get a headache?',
    'Do you feel short of breath faster than usual?',
    'Do you suffer from chronic lung diseases?',
    'Do you suffer from heard disease?',
    'Do you suffer from obesity?',
    'If you are a woman, are you pregnant?',
    'Are you currently taking steriods?',
    'Are you currently taking immunosuppressants? In case you suffer from immunosuppression as a result of an operation,...etc?', */
  ];
  answers(int score) {
    total += score;
    setState(() {
      current += 1;
      if (current == questionList.length) {
        current = current - 1;
        press();
      }
    });
    print(total);
  }

  press() {
    if (0 <= total && total <= 45) {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
            alignment: Alignment.center,
            title: const Icon(
              smile,
              color: icons,
              size: 60,
            ),
            content: Form(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Fourtunately, you are fine and not infected with the virus.....',
                    style: titleStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Divider(color: mainColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'But on the event that you have any of these symptomps, please obtain the anti-inflammatory herbs from here ',
                          style: titleStyle,
                        ),
                      ),
                      IconButton(
                        color: icons,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InfoPage(),
                              ));
                        },
                        icon: const Icon(
                            Icons.keyboard_double_arrow_right_rounded),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Divider(color: mainColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Then, if there are no results after obtaining the herbs, please go to the neares hospital here',
                          style: titleStyle,
                        ),
                      ),
                      IconButton(
                        color: icons,
                        onPressed: () {
                          // route to map functionality
                        },
                        icon: const Icon(
                            Icons.keyboard_double_arrow_right_rounded),
                      ),
                    ],
                  ),
                ),
                //button
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: mainColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'OK',
                          style: titleStyle.copyWith(color: txtButtons),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.restart_alt, size: 20, color: icons),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Questions(),
                        transitionDuration: Duration.zero,
                      ),
                    );
                  },
                ),
              ],
            ))),
      );
    } else if (45 < total && total <= 80) {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
            alignment: Alignment.center,
            title: const Icon(
              frown,
              color: icons,
              size: 60,
            ),
            content: Form(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Text(
                      'You are very likely to be infected with the virus, and your health is also not good, but don\'t worry, you just need to take care of yourselfandyour health.',
                      style: titleStyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Divider(color: mainColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'just get boosters, you will find information about from here. ',
                          style: titleStyle,
                        ),
                      ),
                      IconButton(
                        color: icons,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InfoPage(),
                              ));
                        },
                        icon: const Icon(
                            Icons.keyboard_double_arrow_right_rounded),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Divider(color: mainColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Then, if you want to check your health, please go to the neares hospital here',
                          style: titleStyle,
                        ),
                      ),
                      IconButton(
                        color: icons,
                        onPressed: () {
                          // route to map functionality
                        },
                        icon: const Icon(
                            Icons.keyboard_double_arrow_right_rounded),
                      ),
                    ],
                  ),
                ),
                //button
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: mainColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'OK',
                          style: titleStyle.copyWith(color: txtButtons),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.restart_alt, size: 20, color: icons),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Questions(),
                        transitionDuration: Duration.zero,
                      ),
                    );
                  },
                ),
              ],
            ))),
      );
    } else {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
            alignment: Alignment.center,
            title: const Icon(
              meh,
              color: icons,
              size: 60,
            ),
            content: Form(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Unfortunately, your condition is serious.',
                    style: titleStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Divider(color: mainColor),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Please maintain a safe position to prevent injury to those around you and then go to the nearest hospital from here.',
                          style: titleStyle,
                        ),
                      ),
                      IconButton(
                        color: icons,
                        onPressed: () {
                          // route to map functionality
                        },
                        icon: const Icon(
                            Icons.keyboard_double_arrow_right_rounded),
                      ),
                    ],
                  ),
                ),
                //button
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkResponse(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: mainColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'OK',
                          style: titleStyle.copyWith(color: txtButtons),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.restart_alt, size: 20, color: icons),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Questions(),
                        transitionDuration: Duration.zero,
                      ),
                    );
                  },
                ),
              ],
            ))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            child: Column(
              children: [
                //the design of appBar.
                titlePage(
                  text: 'Corona virus examination.',
                  size: size.width / 13,
                ),
                free,
                SingleChildScrollView(
                  child: show == false
                      ? Column(
                          children: [
                            //the note of answering the questions.
                            Note(
                              num: questionList.length,
                            ),
                            free,
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Divider(
                                color: icons,
                              ),
                            ),
                            free,
                            /*  */
                            Container(
                              margin: EdgeInsets.only(top: size.height / 180),
                              height: 60,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    show = !show;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 200,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: mainColor,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'Start',
                                          style: TextStyle(
                                              color: bg,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          color: bg,
                          margin: const EdgeInsets.only(top: 85),
                          height: size.height / 2,
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //show the no_questions.
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    for (int i = 0;
                                        i < questionList.length;
                                        i++)
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: properCircles(i),
                                      ),
                                  ],
                                ),
                              ),
                              free,
                              free,
                              //chooses
                              QuestionCard(
                                questText: questionList[current]['text'],
                                questionIndex: current,
                              ),
                              ...(questionList[current]['answer']
                                      as List<Map<String, Object>>)
                                  .map(
                                    (answer) => Answers(
                                        answerText: answer['text'],
                                        press: () => answers(answer['score'])),
                                  )
                                  .toList(),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget properCircles(int index) {
    if (index == current) {
      return wait(index);
    } else if (index != current && index < current) {
      return seen(index);
    } else {
      return notSeen(index);
    }
  }

  Widget wait(int value) {
    return Container(
      decoration: const BoxDecoration(color: mainColor, shape: BoxShape.circle),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Text('$value', style: const TextStyle(fontSize: 18, color: bg)),
        ),
      ),
    );
  }

  Widget seen(int value) {
    return Container(
      //height: 220,
      decoration: const BoxDecoration(color: mainColor, shape: BoxShape.circle),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                // height: 90,
                decoration:
                    const BoxDecoration(color: bg, shape: BoxShape.circle),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text('$value',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black87)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget notSeen(int value) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.grey[350], shape: BoxShape.circle),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration:
                    const BoxDecoration(color: bg, shape: BoxShape.circle),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text('$value',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black87)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Note extends StatelessWidget {
  const Note({Key key, this.num}) : super(key: key);
  final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      margin: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 190,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 8),
                  blurRadius: 24,
                  color: shadow,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                        'Corona Virus Examination consists of - $num - Questions, to increase the accuracy of the result, please follow the following ties...',
                        textAlign: TextAlign.left,
                        style: subtxtStyle.copyWith(fontSize: 16)),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 10),
                      child: Text(
                        '  • Your honest answer will increase the accuracy of the results.',
                        textAlign: TextAlign.left,
                        style: subtxtStyle.copyWith(fontSize: 14),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 8, right: 10, left: 10),
                    child: Text(
                      '  • Choose the answer without any external pressures or fears.',
                      textAlign: TextAlign.left,
                      style: subtxtStyle.copyWith(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 19,
            left: 9,
            child: Icon(
              FontAwesomeIcons.exclamationCircle,
              color: icons,
              size: 48,
            ),
          )
        ],
      ),
    );
  }
}
