import 'package:covid_infected_helper/model/health_model.dart';
import 'package:covid_infected_helper/network/dio_helper.dart';
import 'package:covid_infected_helper/screenat/screenat/Home/home.dart';
import 'package:covid_infected_helper/screenat/screenat/chart/chart_screen.dart';
import 'package:covid_infected_helper/screenat/screenat/map/map_screen.dart';
import 'package:covid_infected_helper/screenat/screenat/news/news_screen.dart';
import 'package:flutter/material.dart';

class LayOutProvider with ChangeNotifier {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const NewsScreen(),
    const ChartScreen(),
    const MapScreen(),
  ];

  HealthModel ?healthModel;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void getHealth() {
    DioHelper.getData(
        url:'v2/top-headlines',
        query:{
          'country':'eg',
          'category':'health',
          'apiKey':'7142965a092f4cbe8c27fd750f23d344'
        }
    ).then((value) {
      healthModel=value.data['articles'];
      print(healthModel!.articles![0].content);
      notifyListeners();
    }).catchError((error){
      print(error.toString());
      notifyListeners();

    });
  }
}
