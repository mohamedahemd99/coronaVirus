// @dart=2.9
import 'package:flutter/material.dart';
/*appBar text is semiBold and 20 size*/
/*headers of pages is regular and 18 size */
/*titles is semilight and 16 size */
/*txts is light and 14 size */

//colors
const mainColor = Color(0xFF24A19C); //Color.fromARGB(255, 25, 35, 70);
const icons = Colors.orange;
const txtButtons = Color(0xFFFEFEFE);
Color links = Colors.lightBlue;
const bg = Color(0xFFFEFEFE);

//appBar texts
const appbartextStyle = TextStyle(
  color: bg,
  fontSize: 20,
  fontFamily: "assets/lottie/fonst/SEGOEUIB.TTF",
);
// header
const headerColor = Color(0xFF3F3F3F);
const headerStyle = TextStyle(
  color: headerColor,
  fontSize: 18,
  fontFamily: "assets/lottie/fonst/SEGUISB.TTF",
);

// title Texts
const titleColor = Color(0xFF353535);
const titleStyle = TextStyle(
  color: titleColor,
  fontSize: 14,
  fontFamily: "assets/lottie/fonst/SEGOEUI.TTF",
);
// sub Texts
const textLightColor = Color(0xFF656565);
const subtxtStyle = TextStyle(
  color: textLightColor,
  fontSize: 12,
  fontFamily: "assets/lottie/fonst/SEGOEUISL.TTF",
);

//ArabicText
const arabiclightStyle = TextStyle(
  color: textLightColor,
  fontSize: 14,
  fontFamily: "assets/lottie/fonst/SIMPO.TTF",
);
const arabicboldStyle = TextStyle(
  color: textLightColor,
  fontSize: 18,
  fontFamily: "assets/lottie/fonst/SIMPBDO.TTF",
);

//gradient
BoxDecoration bgGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      mainColor.withOpacity(0.14),
      mainColor,
      // Color(0xFF3383CD),
      // Color(0xFF112497),
    ],
  ),
);

//the body
const bodyCircular = BorderRadius.all(Radius.circular(20));
const lonelyCircular = Radius.circular(15);

//appbar title
Color shadow = const Color(0xFFB7B7B7).withOpacity(.16);
Color activeShadow = const Color(0xFF4056C6).withOpacity(0.15);

//for image in appbar
Widget image = const Center(
  child: Padding(
    padding: EdgeInsets.only(top: 2.0, bottom: 0),
    child: SizedBox(
      height: 90,
      width: 120,
      child: Image(
        image: AssetImage(
          'images/orange.png',
        ),
      ),
    ),
  ),
);

//design of appBAr
class titlePage extends StatelessWidget {
  const titlePage({Key key, this.text, this.size}) : super(key: key);
  final String text;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 35,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
        ),
        //page title
        Positioned(
          bottom: 2,
          left: size, //.width / 13,
          child: Container(
            height: 30,
            width: 330,
            decoration: const BoxDecoration(
              color: bg,
              borderRadius: bodyCircular,
            ),
            child: Center(
              child: Text(
                text, //'Corona virus examination.'
                style: headerStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget free = const SizedBox(
  height: 20,
);
ThemeData getThemes() {
  return ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.all(20),
    hintStyle: titleStyle,
    labelStyle: subtxtStyle,
    errorStyle: TextStyle(color: Colors.red),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: Colors.grey, width: 2),
      gapPadding: 4,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: mainColor, width: 2),
      gapPadding: 4,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: Colors.red, width: 2),
      gapPadding: 4,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(color: mainColor, width: 2),
      gapPadding: 4,
    ),
  ));
}

const IconData smile = IconData(0x1F600);
const IconData frown = IconData(0x1F61F);
const IconData meh = IconData(0x1F628);
