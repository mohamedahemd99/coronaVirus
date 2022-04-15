// @dart=2.9
import 'package:covid_infected_helper/screenat/screenat/layout/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';
import '../screenat/Home/home.dart';
import 'forget_password.dart';
import 'signning.dart';

//login-Screen
class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passVisible;
  @override
  void initState() {
    _passVisible = _passVisible ?? false;
  }

  final _text = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _text.dispose();
  }

  String validatePassword(String value) {
    if (!(value.length > 4) && value.isNotEmpty) {
      return "Password should contain more than 4 characters.";
    } else {
      return null;
    }
  }

  //empty function for preventing any errors.
  void click() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    //to make the design of this page exactly princible for any size devices
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,

                    decoration: bgGradient,

                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 43,
                          ),
                          const SizedBox(
                            child: Icon(
                              Icons.person,
                              size: 140,
                              color: mainColor,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 43),
                            width: 325,
                            height: 500,
                            decoration: const BoxDecoration(
                              color: bg,
                              borderRadius: bodyCircular,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                // the header -LOGIN-
                                const Text(
                                  "Login Now!",
                                  style: headerStyle,
                                ),
                                //free space
                                const SizedBox(
                                  height: 10,
                                ),
                                //the subText of the header
                                const Text(
                                  "Please Login to Start With CIH..",
                                  style: subtxtStyle,
                                ),
                                //free space
                                const SizedBox(
                                  height: 20,
                                ),
                                //the field of Email Address
                                const SizedBox(
                                  width: 260,
                                  height: 60,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      suffix: Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Icon(
                                          FontAwesomeIcons.envelope,
                                          color: mainColor,
                                          size: 20,
                                        ),
                                      ),
                                      labelText: "Email Address",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                      ),
                                    ),
                                  ),
                                ),
                                //free space
                                const SizedBox(
                                  height: 12,
                                ),
                                //the field of Password
                                SizedBox(
                                  width: 260,
                                  height: 60,
                                  child: TextField(
                                    controller: _text,
                                    obscureText: !_passVisible,
                                    decoration: InputDecoration(
                                      suffix: IconButton(
                                        icon: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Icon(
                                            _passVisible
                                                ? FontAwesomeIcons.eye
                                                : FontAwesomeIcons.eyeSlash,
                                            color: mainColor,
                                            size: 20,
                                          ),
                                        ),
                                        onPressed: () {
                                          //updatestate
                                          setState(() {
                                            _passVisible = !_passVisible;
                                          });
                                        },
                                      ),
                                      labelText: "Password",
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                      ),
                                      errorMaxLines: 8,
                                      errorText: validatePassword(_text.text),
                                    ),
                                  ),
                                ),
                                //for link -forget password- with padding from all direction
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 30, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        //click function in this to view the helper page in datalogin which forgotten
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ForgetPassword()));
                                        },
                                        child: Text(
                                          "Forget Password",
                                          style: TextStyle(color: links),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //the button to the home page
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                 LayOutScreen()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 250,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                      color: mainColor,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Text(
                                        'Login Now',
                                        style: TextStyle(
                                            color: txtButtons,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                //free space
                                const SizedBox(
                                  height: 17,
                                ),
                                //the row of -don't have an account- and it's link to sign up page
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Don`t have an account? ',
                                      style: subtxtStyle,
                                    ),
                                    TextButton(
                                      //click function in this to view the Sign up page
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignUp()));
                                      },
                                      child: Text(
                                        "Create new one!",
                                        style: TextStyle(color: links),
                                      ),
                                    )
                                  ],
                                ),
                                //free space
                                const SizedBox(
                                  height: 15,
                                ),
                                //another choise of logging
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 0.7,
                                      width: 100,
                                      child: Container(
                                        color: textLightColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2.0,
                                    ),
                                    const Text("Or Login using ",
                                        style: subtxtStyle),
                                    SizedBox(
                                      height: 0.7,
                                      width: 100,
                                      child: Container(
                                        color: textLightColor,
                                      ),
                                    ),
                                  ],
                                ),
                                //free space
                                const SizedBox(
                                  height: 15,
                                ),
                                //logging by facebook or google
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                        onPressed: click,
                                        icon: const Icon(
                                            FontAwesomeIcons.facebook,
                                            color: Colors.blue)),
                                    IconButton(
                                        onPressed: click,
                                        icon: const Icon(
                                          FontAwesomeIcons.google,
                                          color: Colors.redAccent,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
