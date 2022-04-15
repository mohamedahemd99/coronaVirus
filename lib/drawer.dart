// @dart=2.9
import 'package:covid_infected_helper/constants.dart';
import 'package:covid_infected_helper/screenat/screenat/Home/updates.dart';
import 'package:covid_infected_helper/screenat/screenat/articles/aticles_page.dart';
import 'package:covid_infected_helper/screenat/screenat/quests/questions.dart';
import 'package:covid_infected_helper/screenat/screenat/Home/home.dart';
import 'package:covid_infected_helper/screenat/screenat/personalaccount/personal_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screenat/info.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'Marim',
            ),
            accountEmail: Text(
              'example@gmail.com',
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'images/k.PNG',
              ),
            ),
            decoration: BoxDecoration(
              color: mainColor,
              image: DecorationImage(
                image: AssetImage('images/covid-19.jpg'),
                opacity: 50,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
              leading: const Icon(
                Icons.home,
                color: mainColor,
              ),
              title: const Text(
                'Home Page',
                style: titleStyle,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ))),
          const Divider(
            color: icons,
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: mainColor,
            ),
            title: const Text(
              'Personal Account',
              style: titleStyle,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalPage()));
            },
          ),
          ListTile(
              leading: const Icon(
                Icons.info_rounded,
                color: mainColor,
              ),
              title: const Text(
                'Updates',
                style: titleStyle,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> const Updates(),
                  ))),
          ListTile(
              leading: const Icon(
                Icons.info_outline_rounded,
                color: mainColor,
              ),
              title: const Text(
                'Infected Symptoms',
                style: titleStyle,
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoPage(),
                  ))),
          ListTile(
            leading: const Icon(
              Icons.article,
              color: mainColor,
            ),
            title: const Text(
              'Articles',
              style: titleStyle,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ArticlePage()));
            },
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.stethoscope,
              color: mainColor,
            ),
            title: const Text(
              'Examiner',
              style: titleStyle,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Questions()));
            },
          ),
          const Divider(
            color: icons,
          ),
          ListTile(
              leading: const Icon(
                Icons.settings,
                color: mainColor,
              ),
              title: const Text(
                'Settings',
                style: titleStyle,
              ),
              onTap: () {}),
          ListTile(
              leading: const Icon(
                Icons.description,
                color: mainColor,
              ),
              title: const Text(
                'Politicies',
                style: titleStyle,
              ),
              onTap: () {}),
          ListTile(
              leading: const Icon(
                Icons.share,
                color: mainColor,
              ),
              title: const Text(
                'Share us',
                style: titleStyle,
              ),
              onTap: () {}),
          const Divider(
            color: icons,
          ),
          ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                color: mainColor,
              ),
              title: const Text(
                'Exit',
                style: titleStyle,
              ),
              onTap: () {}),
        ],
      ),
    );
  }
}
