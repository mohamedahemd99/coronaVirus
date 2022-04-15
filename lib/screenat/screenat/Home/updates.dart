// @dart=2.9
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../drawer.dart';

class Updates extends StatelessWidget {
  const Updates({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
        body: const UpdateScreen());
  }
}

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({Key key}) : super(key: key);

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
                free,
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ExtractData(),
                ),
                free,
                free,
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Statistic(),
                ),
                free,
                free,
              ],
            ),
          ),
        ],
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

class ExtractData extends StatefulWidget {
  const ExtractData({Key key}) : super(key: key);

  @override
  State<ExtractData> createState() => _ExtractDataState();
}

class _ExtractDataState extends State<ExtractData> {
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
          //header of second card
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.info_rounded,
                  color: icons,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Our chick cases with covid-19",
                  style: titleStyle,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(),
          ),
          //subheader of second Card -- list of countries
          Container(
            child: DropDown(),
            width: double.infinity,
            margin: const EdgeInsets.all(10),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 12.0, bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                //have an extract data about countries.
                //drop list
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
          //the extract data about
          titleWidget('Confirmed', '5,496',
              Colors.blue), //cases answer our examine --covered
          titleWidget(
            'Infected',
            '2,854',
            Colors.red,
          ), //number of cases was infected
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
                    "Infected Rate",
                    "20.20 %",
                    Colors.red,
                  ),
                  const Expanded(
                    child: Infos(),
                  ),
                ],
              ),
            ),
          ),
          //extract the symptomps the cases was have
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info_outline, color: Colors.black87),
              Text(
                'the most common symptoms in the country',
                style: subtxtStyle.copyWith(color: icons, fontSize: 13),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class DropDown extends StatefulWidget {
  const DropDown({Key key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String val = 'Cairo';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: val,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: icons,
          size: 25,
        ),
        elevation: 16,
        style: headerStyle,
        underline: Container(
          color: mainColor,
          height: 2,
        ),
        onChanged: (String value) {
          setState(() {
            val = value;
          });
        },
        //this items should change based on the data of our firebaseData
        items: <String>[
          'Cairo',
          'Alexandria',
          'Asuite',
          'PorSaeed',
          'Aswan',
          'RedSea',
          'Siwa',
          'SharmElShekh',
        ].map<DropdownMenuItem<String>>((String newV) {
          return DropdownMenuItem(
            child: Container(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Text(
                  newV,
                  style: titleStyle.copyWith(
                      color: mainColor, fontWeight: FontWeight.bold),
                ),
                Divider(),
              ],
            )),
            value: newV,
            alignment: AlignmentDirectional.centerStart,
          );
        }).toList());
  }
}

class Infos extends StatefulWidget {
  const Infos({Key key}) : super(key: key);

  @override
  State<Infos> createState() => _InfosState();
}

class _InfosState extends State<Infos> {
  String getFever =
      'fever'; //this and the other same will extract from Question page
  int getPercent = 20; //like the above
  String val = 'Cairo';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: val,
        icon: const Icon(
          Icons.arrow_drop_down,
          color: icons,
          size: 25,
        ),
        elevation: 16,
        style: headerStyle,
        onChanged: (String value) {
          setState(() {
            val = value;
          });
        },
        items: ['Cairo', 'Alex', 'Aswan', 'Asiout', 'BeniSouif']
            .map((e) => DropdownMenuItem(
                value: e,
                child: Row(children: [
                  Text(e),
                  const SizedBox(
                    width: 2,
                    child: Text(':'),
                  ),
                  const SizedBox(
                    width: 1.5,
                  ),
                  Text(getFever),
                  const SizedBox(
                    width: 2,
                    child: Text(':'),
                  ),
                  const SizedBox(
                    width: 1.5,
                  ),
                  Text('$getPercent%')
                ], mainAxisAlignment: MainAxisAlignment.spaceBetween)))
            .toList());
  }
}
