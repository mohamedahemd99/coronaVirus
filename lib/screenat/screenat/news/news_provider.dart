import 'dart:convert';

import 'package:covid_infected_helper/model/health_model.dart';
import 'package:covid_infected_helper/network/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsProvider with ChangeNotifier {
  HealthModel? healthModel;
  String url =
      'https://newsapi.org/v2/top-headlines?country=eg&apiKey=7142965a092f4cbe8c27fd750f23d344&category=health';

  void getHealth() {
    http
        .get(
      Uri.parse(url),
    )
        .then((response) {
      final model = json.decode(response.body);
      healthModel = HealthModel.fromJson(model);
      print(healthModel!.articles![0].title);
      notifyListeners();
    }).catchError((error) {
      print(error);
      notifyListeners();
    });
  }

  void getHealth1() {
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'health',
      'apiKey': '7142965a092f4cbe8c27fd750f23d344'
    }).then((value) {
      final response = json.decode(value.data);

      healthModel = HealthModel.fromJson(response);
      print(healthModel!.articles![0].content);
      notifyListeners();
    }).catchError((error) {
      print(error.toString());
      notifyListeners();
    });
  }
}
