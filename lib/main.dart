// @dart=2.9
import 'package:covid_infected_helper/screenat/screenat/layout/layout_provider.dart';
import 'package:covid_infected_helper/screenat/screenat/onboardingscreen/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'screenat/screenat/news/news_provider.dart';

void main() {
  runApp(
    initialRoute(),
  );
}

//material
class initialRoute extends StatelessWidget {
  const initialRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LayOutProvider()),
        ChangeNotifierProvider(
            create: (context) => NewsProvider()..getHealth(), lazy: false),
      ],

      child: MaterialApp(
        color: mainColor,
        debugShowCheckedModeBanner: false,
        title: "Covid Infected Helper",
        home: const OnBoardingView(),
        theme: getThemes(),
      ),
    );
  }
}
