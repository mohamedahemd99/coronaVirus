// @dart=2.9
import 'package:covid_infected_helper/constants.dart';
import 'package:covid_infected_helper/screenat/screenat/articles/articles.dart';
import 'package:covid_infected_helper/screenat/screenat/articles/cards/cards.dart';
import 'package:covid_infected_helper/screenat/screenat/articles/cards/thepage_of_cards/details_cards.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      // drawer: const NavBar(),
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
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: bg,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const ScreenARCs(),
    );
  }
}

class ScreenARCs extends StatelessWidget {
  const ScreenARCs({Key key, this.ar}) : super(key: key);
  final Article ar;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Container(
        color: bg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //design down of appbar
            titlePage(
              text: 'Some of Articles.',
              size: size.width / 13,
            ),
            free,
            //the content
            Expanded(
                child: ListView.separated(
              itemBuilder: (context, index) => Cards(
                  article: articles[index],
                  itemIndex: index,
                  Press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsCard(
                          detail: articles[index],
                        ),
                      ))),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: mainColor,
              ),
              itemCount: articles.length,
            )

                /* ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) => Cards(
                  article: articles[index],
                  itemIndex: index,
                  Press: () {},
                ),
              ), */
                ),
          ],
        ),
      ),
    );
  }
}
