// @dart=2.9

import 'package:covid_infected_helper/screenat/screenat/Home/launcher.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../drawer.dart';
import '../articles/articles.dart';
import '../articles/aticles_page.dart';
import '../articles/cards/cards.dart';
import 'package:covid_infected_helper/screenat/screenat/quests/questions.dart';

//for appbar


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      children: [
        //design of app bar
        Container(
          height: 20,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        //for linkat
        Container(
          margin: const EdgeInsets.all(20),
          height: 226,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 8),
                blurRadius: 24,
                color: shadow,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              const Text('Covid Infected Helper.', style: subtxtStyle),
              const SizedBox(height: 8),
              //link of ministry page
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const URLLauncher()),
                ),
                child: const CoverLink(
                  text: 'To get the vaccine, please click here',
                ),
              ),
              const SizedBox(height: 15),
              //link for questions
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Questions())),
                child: const CoverLink(
                  text: 'Check your self after taking vaccine',
                ),
              ),
              const SizedBox(height: 8),
              const Text('Just for You.', style: subtxtStyle),
              const SizedBox(height: 8),
            ],
          ),
        ),
        //the updates in home page
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Statistic(),
        ),
        //text Articles
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            top: 10,
            left: 20,
          ),
          child: TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ArticlePage())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text('ARTICLES:',
                      style: titleStyle.copyWith(color: icons)),
                  width: 70,
                ),
              ],
            ),
          ),
        ),
        //articles body
        Container(
          height: 500,
          color: bg,
          child: ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) => Cards(
              article: articles[index],
              itemIndex: index,
              Press: () {},
            ),
          ),
        )
      ],
    );
  }
}

//for links in the page.
class CoverLink extends StatelessWidget {
  const CoverLink({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: mainColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: titleStyle.copyWith(color: bg),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.arrow_right_rounded,
                color: icons,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Statistic extends StatelessWidget {
  const Statistic({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        //side: BorderSide(color: Colors.black,),
      ),
      child: Column(
        children: [
          //header of first card
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.info_outline,
                  color: icons,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Covid-19 Cases",
                  style: titleStyle,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          //subheader of first Card
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 12.0, bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Global States", style: headerStyle),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4),
            child: Row(
              children: [
                Flexible(
                    child: ListTile(
                  title: const Text(
                    "Last Updated :",
                    style: subtxtStyle,
                  ),
                  subtitle: Text(
                    '26-10-2022',
                    style: subtxtStyle.copyWith(fontSize: 12),
                  ),
                ))
              ],
            ),
          ),
          titleWidget('Confirmed', '1,355,496', Colors.blue),
          titleWidget('Recovered', '567,854', Colors.green),
          titleWidget('Deaths', '30,645', Colors.red),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.black87,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  titleContainer(
                    "Recovered Rate",
                    "20.20 %",
                    Colors.green,
                  ),
                  titleContainer("Deaths Rate", "3.14 %", Colors.red),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget titleContainer(title, subtitle, color) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        subtitle,
        style: subtxtStyle.copyWith(color: color),
      ),
      Text(
        title,
        style: titleStyle.copyWith(color: color),
      ),
    ],
  );
}

Widget titleWidget(title, subtitle, color) {
  return ListTile(
    title: Text(
      title,
      style: titleStyle.copyWith(color: color),
    ),
    trailing: Text(
      subtitle,
      style: subtxtStyle.copyWith(color: color),
    ),
  );
}
