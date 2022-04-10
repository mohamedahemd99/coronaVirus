// @dart=2.9
import 'package:covid_infected_helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'loginning.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

  void click() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: bg,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: mainColor.withOpacity(0.14),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: bg,
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Back',
          style: TextStyle(
            color: bg,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    //to make the design of this page exactly princible for any size devices
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: bgGradient,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 17,
                          ),
                          const SizedBox(
                            child: Icon(
                              Icons.person_pin,
                              size: 100,
                              color: mainColor,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 54),
                            width: 325,
                            height: 565,
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
                                //the header
                                Text(
                                  "Create Account",
                                  style: headerStyle,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //subtexts
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Text(
                                    "Enter Your full name,Email,and Password to sign up.",
                                    textAlign: TextAlign.left,
                                    style: subtxtStyle,
                                  ),
                                ),
                                //link of -have an account?-
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                                                  const Login(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          "have an account?",
                                          style: TextStyle(color: links),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                //field of full name
                                const SizedBox(
                                  width: 260,
                                  height: 60,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        suffix: Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Icon(
                                            FontAwesomeIcons.penFancy,
                                            color: mainColor,
                                            size: 20,
                                          ),
                                        ),
                                        labelText: "Full Name",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //field of Email Address
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
                                        labelText: "Email Adress",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(6)),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //field of PAssword
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
                                const SizedBox(
                                  height: 10,
                                ),
                                //button to go to login page
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Login()));
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
                                        'Sign Up',
                                        style: TextStyle(
                                            color: bg,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                //texts of privacy policy
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Text(
                                    "By signning up you agree to our terms conditions & privacy policy.",
                                    style: subtxtStyle,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //the line design
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 0.7,
                                      width: 120,
                                      child: Container(
                                        color: textLightColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2.0,
                                    ),
                                    const Text(
                                      "Or",
                                      style: subtxtStyle,
                                    ),
                                    SizedBox(
                                      height: 0.7,
                                      width: 120,
                                      child: Container(
                                        color: textLightColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //signning by facebook or google
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
