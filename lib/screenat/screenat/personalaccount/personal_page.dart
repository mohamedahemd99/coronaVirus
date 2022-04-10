// @dart=2.9
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constants.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(decoration: bgGradient),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: bg,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Personal Account',
          style: appbartextStyle,
        ),
      ),
      body: const PersonalScreen(),
    );
  }
}

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key key}) : super(key: key);

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  File _image;
  void initialState() {
    _image = null;
  }

  final ImagePicker _picker = ImagePicker();
  Future getImageGallery() async {
    final XFile photo = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = photo as File;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: bg,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            //design of appBar
                            Container(
                              height: 44,
                              decoration: const BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                              ),
                            ),
                            //for the image
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 72.5,
                                        backgroundColor: bg,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey[350],
                                          radius: 70.0,
                                          child: _image == null
                                              ? const Text('not loaded',
                                                  style: subtxtStyle)
                                              : Image.file(_image),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const SizedBox(width: 12),
                                            FloatingActionButton(
                                              onPressed: getImageGallery,
                                              mini: true,
                                              backgroundColor: mainColor,
                                              elevation: 0,
                                              tooltip: 'upload from gallery',
                                              child: const Icon(
                                                Icons.add_a_photo_rounded,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            free,
                            //body of personal info
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 26,
                                    top: 85.0 + 70.0,
                                  ),
                                  height: 720.0 - 70 - 85 - 55,
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'User id:',
                                          style: titleStyle,
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          width: 240,
                                          height: 30,
                                          child: TextFormField(
                                            textAlign: TextAlign.start,
                                            textAlignVertical:
                                                TextAlignVertical.bottom,
                                            decoration: const InputDecoration(
                                              hintText: ' ',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        free,
                                        const Text(
                                          'Full Name:',
                                          style: titleStyle,
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          width: 240,
                                          height: 30,
                                          child: TextFormField(
                                            textAlign: TextAlign.start,
                                            textAlignVertical:
                                                TextAlignVertical.bottom,
                                            decoration: const InputDecoration(
                                              hintText:
                                                  ' Marim Mohamed ', //--getter--from db
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        free,
                                        const Text(
                                          'Email Account:',
                                          style: titleStyle,
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          width: 240,
                                          height: 30,
                                          child: TextFormField(
                                            textAlign: TextAlign.start,
                                            textAlignVertical:
                                                TextAlignVertical.bottom,
                                            decoration: const InputDecoration(
                                              hintText:
                                                  ' Marim Mohamed@gmail.com ', //--getter--from db
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        free,
                                        const Text(
                                          'Phone Number:',
                                          style: titleStyle,
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          width: 240,
                                          height: 30,
                                          child: TextFormField(
                                            textAlign: TextAlign.start,
                                            textAlignVertical:
                                                TextAlignVertical.bottom,
                                            decoration: const InputDecoration(
                                              hintText:
                                                  ' Enter your phone number....', //--setter--from db
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          'Password:',
                                          style: titleStyle,
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        SizedBox(
                                          width: 240,
                                          height: 30,
                                          child: TextFormField(
                                            obscureText: true,
                                            textAlign: TextAlign.start,
                                            textAlignVertical:
                                                TextAlignVertical.bottom,
                                            decoration: const InputDecoration(
                                              hintText:
                                                  ' 26njwefhuenf ', //--getter--from db
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //button of saving any edit in personal information
                            Container(
                              margin: EdgeInsets.only(top: size.height / 180),
                              height: 600,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 200,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                        color: mainColor,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'Save',
                                          style: TextStyle(
                                              color: bg,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
