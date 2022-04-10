// @dart=2.9
import 'package:flutter/material.dart';

import '../constants.dart';

//app bar
class InfoPage extends StatelessWidget {
  const InfoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //'Must Know About Covid-19'
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(decoration: bgGradient),
        title: image,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: bg),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: bg,
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: const Screen(),
    );
  }
}

//body
class Screen extends StatefulWidget {
  const Screen({Key key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          child: Column(
            children: [
              //the design of appBar.
              titlePage(
                text: 'Must Know About Covid-19',
                size: size.width / 13,
              ),
              free,
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              "Most Common Symptoms",
                              style: titleStyle,
                            ),
                            free,
                            //most symptoms cards
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    //Cards of most common Symptoms
                                    SymptomCard(
                                        image: "images/characters/fever1.png",
                                        title: "Fever",
                                        press: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text(
                                                    'Some herbs to get rid of Fever',
                                                    style: titleStyle,
                                                  ),
                                                  content: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Positioned(
                                                        right: -40,
                                                        top: -40,
                                                        child: InkResponse(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child:
                                                              const CircleAvatar(
                                                            backgroundColor:
                                                                icons,
                                                            child: Icon(
                                                                Icons.close),
                                                          ),
                                                        ),
                                                      ),
                                                      Form(
                                                          key: formKey,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                  "Ginger",
                                                                  style:
                                                                      subtxtStyle,
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                  "Mint",
                                                                  style:
                                                                      subtxtStyle,
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                  "Basil",
                                                                  style:
                                                                      subtxtStyle,
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                  "Coriander",
                                                                  style:
                                                                      subtxtStyle,
                                                                ),
                                                              ),
                                                              //button
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        12.0),
                                                                child:
                                                                    InkResponse(
                                                                  onTap: () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: 200,
                                                                    height: 50,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50)),
                                                                      color:
                                                                          mainColor,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .all(
                                                                          12.0),
                                                                      child:
                                                                          Text(
                                                                        'OK',
                                                                        style: titleStyle.copyWith(
                                                                            color:
                                                                                txtButtons),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ))
                                                    ],
                                                  ),
                                                );
                                              });
                                        }),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SymptomCard(
                                        image: "images/characters/cough.png",
                                        title: "Cough",
                                        press: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      backgroundBlendMode:
                                                          BlendMode.softLight,
                                                      color: mainColor,
                                                    ),
                                                    child: const Text(
                                                      'Some herbs to get rid of Cough',
                                                      style: titleStyle,
                                                    ),
                                                  ),
                                                  content: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Positioned(
                                                        right: -40,
                                                        top: -80,
                                                        child: InkResponse(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child:
                                                              const CircleAvatar(
                                                            backgroundColor:
                                                                icons,
                                                            child: Icon(
                                                                Icons.close),
                                                          ),
                                                        ),
                                                      ),
                                                      Form(
                                                          key: formKey,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Ginger",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                  "Mint",
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Zaatar",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "tea with honey",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        12.0),
                                                                child:
                                                                    InkResponse(
                                                                  onTap: () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: 200,
                                                                    height: 50,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50)),
                                                                      color:
                                                                          mainColor,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .all(
                                                                          12.0),
                                                                      child:
                                                                          Text(
                                                                        'OK',
                                                                        style: titleStyle.copyWith(
                                                                            color:
                                                                                txtButtons),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ))
                                                    ],
                                                  ),
                                                );
                                              });
                                        }),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SymptomCard(
                                        image:
                                            "images/characters/exhaution.png",
                                        title: "Exhaution",
                                        press: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text(
                                                    'Some herbs to get rid of Exhaution',
                                                    style: titleStyle,
                                                  ),
                                                  content: Stack(
                                                    overflow: Overflow.visible,
                                                    children: [
                                                      Positioned(
                                                        right: -40,
                                                        top: -40,
                                                        child: InkResponse(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child:
                                                              const CircleAvatar(
                                                            backgroundColor:
                                                                icons,
                                                            child: Icon(
                                                                Icons.close),
                                                          ),
                                                        ),
                                                      ),
                                                      Form(
                                                          key: formKey,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Green tea",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Mint",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Rosemary",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Sage",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        12.0),
                                                                child:
                                                                    InkResponse(
                                                                  onTap: () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: 200,
                                                                    height: 50,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50)),
                                                                      color:
                                                                          mainColor,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .all(
                                                                          12.0),
                                                                      child:
                                                                          Text(
                                                                        'OK',
                                                                        style: titleStyle.copyWith(
                                                                            color:
                                                                                txtButtons),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ))
                                                    ],
                                                  ),
                                                );
                                              });
                                        }),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SymptomCard(
                                        image: "images/characters/headache.png",
                                        title: "Headache",
                                        press: () {
                                          return showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: const Text(
                                                    'Some herbs to get rid of Headache',
                                                    style: titleStyle,
                                                  ),
                                                  content: Stack(
                                                    overflow: Overflow.visible,
                                                    children: [
                                                      Positioned(
                                                        right: -40,
                                                        top: -40,
                                                        child: InkResponse(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child:
                                                              const CircleAvatar(
                                                            backgroundColor:
                                                                icons,
                                                            child: Icon(
                                                                Icons.close),
                                                          ),
                                                        ),
                                                      ),
                                                      Form(
                                                          key: formKey,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Cinnamon",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Mint",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                  "Galic",
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Turmeric",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                  "Clove",
                                                                ),
                                                              ),
                                                              const Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                child: Divider(
                                                                    color:
                                                                        mainColor),
                                                              ),
                                                              const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Text(
                                                                    "Basil",
                                                                    style:
                                                                        subtxtStyle),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        12.0),
                                                                child:
                                                                    InkResponse(
                                                                  onTap: () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    width: 200,
                                                                    height: 50,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50)),
                                                                      color:
                                                                          mainColor,
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .all(
                                                                          12.0),
                                                                      child:
                                                                          Text(
                                                                        'OK',
                                                                        style: titleStyle.copyWith(
                                                                            color:
                                                                                txtButtons),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ))
                                                    ],
                                                  ),
                                                );
                                              });
                                        }),
                                  ],
                                )),
                            free,
                            const Text(
                              "Less Common Symptoms",
                              style: headerStyle,
                            ),
                            free,
                            //less symptoms cars
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const <Widget>[
                                    //Cards of less common Symptoms
                                    SymptomCard(
                                      image: "images/characters/diarhea.png",
                                      title: "Diarhea",
                                      isActive: true,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SymptomCard(
                                      image: "images/characters/rash.png",
                                      title: "Rash",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SymptomCard(
                                      image:
                                          "images/characters/breath difficult.png",
                                      title: "Breathing difficulty",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SymptomCard(
                                      image:
                                          "images/characters/aches & pains.png",
                                      title: "Aches and Pains",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SymptomCard(
                                      image:
                                          "images/characters/sore throat.png",
                                      title: "Sore throat",
                                    ),
                                  ],
                                )),
                            free,
                            const Text("Prevention", style: headerStyle),
                            free,
                            const PreventCard(
                              image: "images/characters/wash.png",
                              title: "Wash your hands!",
                              text:
                                  "Wash your hands frequently,use soap & water or an alcohol-based hand sanitizer, and when caughing or sneezing cover your nose and mouth with your elbowor atissue.",
                            ),
                            free,
                            const PreventCard(
                              image: "images/characters/put.png",
                              title: "Put a mask!",
                              text:
                                  "Wear a mask in public places, especially, in closed places, and try as much as possible to go to open places and stay at home if necessary.",
                            ),
                            free,
                            const PreventCard(
                              image: "images/characters/distance.png",
                              title: "Keep a safe distance!",
                              text:
                                  "Keep a safe distance of atleast -one meter- from others, even if they don`t appear ill, just for your safety.",
                            ),
                            free,
                            const PreventCard(
                              image: "images/characters/herbs.png",
                              title: "For immunity booster!",
                              text:
                                  '''Please got one or more of the following vitamins:  1) c, D, E or Zinc selenium. 2) omega 3.  -or- Drink any of this herbs: 1- Cinnamon with honey. 2- ginger tea. 3- Garlic with honey.           
                                          
                                          ''',
                            ),
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PreventCard extends StatelessWidget {
  const PreventCard({Key key, this.image, this.title, this.text})
      : super(key: key);
  final String image, title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 135,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 8),
                    blurRadius: 24,
                    color: shadow,
                  )
                ],
              ),
            ),
            Container(
              height: 156,
              width: 160,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 130,
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: titleStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: subtxtStyle,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SymptomCard extends StatefulWidget {
  final String image, title;
  final bool isActive;
  final Function press;
  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive,
    this.press,
  }) : super(key: key);

  @override
  State<SymptomCard> createState() => _SymptomCardState(press);
}

class _SymptomCardState extends State<SymptomCard> {
  final Function press;

  _SymptomCardState(
    this.press,
  );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 120,
        height: 200,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 8),
              blurRadius: 24,
              color: shadow,
            )
          ],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              height: 100,
              width: 100,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Divider(
                color: mainColor,
              ),
            ),
            Text(widget.title, style: titleStyle),
          ],
        ),
      ),
    );
  }
}
