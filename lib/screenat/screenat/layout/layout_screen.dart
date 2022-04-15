import 'package:covid_infected_helper/constants.dart';
import 'package:covid_infected_helper/drawer.dart';
import 'package:covid_infected_helper/screenat/screenat/layout/layout_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LayOutScreen extends StatefulWidget {
LayOutScreen({ Key? key }) : super(key: key);

  @override
  State<LayOutScreen> createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<LayOutProvider>(context);
    return Scaffold(
      drawer: const NavBar(),
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
      ),
      body: provider.screens[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        currentIndex: provider.currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        onTap: (index) {
          provider.changeIndex(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: provider.currentIndex == 0
                    ? Colors.red
                    : Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper_outlined,
                color: provider.currentIndex == 1
                    ? Colors.red
                    : Colors.grey,
              ),
              label: "News"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
                color: provider.currentIndex == 2
                    ? Colors.red
                    : Colors.grey,
              ),
              label: "Chart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.location_on_outlined,
                color: provider.currentIndex ==3
                    ? Colors.red
                    : Colors.grey,
              ),
              label: "Calls"),
        ],
      ),
    );
  }
}