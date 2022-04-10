// @dart=2.9
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../articles.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key key,
    this.detail,
  }) : super(key: key);
  final Article detail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: appBra(context),
      body: Screen(
        ar: detail,
      ),
    );
  }

  AppBar appBra(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: mainColor,
      title: Center(child: image),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: bg,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Icon(
            Icons.settings,
            color: bg,
          ),
        ),
      ],
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({
    Key key,
    this.ar,
  }) : super(key: key);
  final Article ar;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              //the design of appBar.
              titlePage(
                text: 'Detais',
                size: size.width / 13,
              ),
              free,
              Image.asset(
                ar.photo,
                fit: BoxFit.fill,
              ),
              free,
              Container(
                margin: const EdgeInsets.all(8),
                height: 120,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    free,
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          ar.title,
                          style: headerStyle.copyWith(color: bg),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Divider(
                        color: icons,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          ar.subTitle,
                          textAlign: TextAlign.center,
                          style: subtxtStyle.copyWith(color: bg),
                        ),
                      ),
                    ),
                    free,
                  ],
                ),
              ),
              free,
              Container(
                color: bg,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    ar.description,
                    style: subtxtStyle.copyWith(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              free,
              free,
              free,
            ],
          ))),
        ],
      ),
    );
  }
}
