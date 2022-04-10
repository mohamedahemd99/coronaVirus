// @dart=2.9
import 'package:covid_infected_helper/screenat/screenat/onboardingscreen/onboarding_view.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(
    const initialRoute(),
  );
}

//material
class initialRoute extends StatelessWidget {
  const initialRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: mainColor,
      debugShowCheckedModeBanner: false,
      title: "Covid Infected Helper",
      home: const OnBoardingView(),
      theme: getThemes(),
    );
  }
}
