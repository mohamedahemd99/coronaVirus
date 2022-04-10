// @dart=2.9
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _notMAtch = TextEditingController();
  void dispose() {
    super.dispose();
    _notMAtch.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  String NotMatch(String Value) {
    // if is not in our database, then return" your email isn't matched with our database "
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: bgGradient),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: bg,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Back',
          style: appbartextStyle,
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: bg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      decoration: const BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              'How are you CIH member ?',
                              textAlign: TextAlign.left,
                              style: headerStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'don`t worry just enter your Email account by now.',
                              textAlign: TextAlign.left,
                              style: subtxtStyle,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const SizedBox(
                              width: 260,
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffix: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Icon(
                                      FontAwesomeIcons.envelope,
                                      color: mainColor,
                                    ),
                                  ),
                                  labelText: "Email Adress",
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  /*  errorText: " your email isn't matched with our database " */
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SecondForgetPassword()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    color: mainColor,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                          color: bg,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}

class SecondForgetPassword extends StatefulWidget {
  const SecondForgetPassword({Key key}) : super(key: key);

  @override
  State<SecondForgetPassword> createState() => _SecondForgetPasswordState();
}

class _SecondForgetPasswordState extends State<SecondForgetPassword> {
  bool _passVisible;
  @override
  void initState() {
    _passVisible = _passVisible ?? false;
  }

  final _text = TextEditingController();
  final _sure = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _text.dispose();
  }

  String validatePassword(String value) {
    if (!(value.length > 4) && value.isNotEmpty) {
      return "Password should contain more than 4 characters!";
    } else {
      return null;
    }
  }

  String validateConfirm(String value) {
    if (value.isNotEmpty && value != _text.text) {
      return "return matching the password!";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(decoration: bgGradient),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: bg,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Back',
          style: appbartextStyle,
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: bg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      decoration: const BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              'Welcome again CIH member!',
                              textAlign: TextAlign.left,
                              style: headerStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'By now enter your new password to can you easily login CIH!',
                              textAlign: TextAlign.start,
                              style: subtxtStyle,
                            ),
                            const SizedBox(
                              height: 30,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                  ),
                                  errorMaxLines: 8,
                                  errorText: validatePassword(_text.text),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 260,
                              height: 60,
                              child: TextField(
                                controller: _sure,
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
                                  labelText: "Confirm Password",
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                  ),
                                  errorMaxLines: 8,
                                  errorText: validateConfirm(_sure.text),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SecondForgetPassword()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)),
                                    color: mainColor,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                          color: bg,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
