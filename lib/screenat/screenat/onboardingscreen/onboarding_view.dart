import 'package:covid_infected_helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../authentication/loginning.dart';

class SliderObject {
  String title, subTitle, image;
  SliderObject(this.title, this.subTitle, this.image);
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    Key? key,
    required this.sliderObject,
  }) : super(key: key);
  final SliderObject sliderObject;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: titleStyle.copyWith(fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: subtxtStyle.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset(sliderObject.image),
        ],
      ),
    );
  }
}

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> list = _list;
  final List<SliderObject> _list = [
    SliderObject(
        "Get the vaccine",
        "need to get the vaccine to be safe and effective that give you the best protection against COVID-19, just enter the Ministry of Health page for reservations.",
        'images/image_12.png'),
    SliderObject(
        "Check your self and your family",
        "The self-Checker is an interactive clinical, you just need to answer a series of questions.",
        'images/image_10.jpg'),
  ];
  final PageController _pageController = PageController();
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: PageView.builder(
          itemBuilder: (context, index) {
            // return onboarding page
            return OnBoardingPage(sliderObject: list[index]);
          },
          itemCount: _list.length,
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              current = index;
            });
          },
        ),
      ),
      bottomSheet: Container(
        color: bg,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text('Skip',
                    style:
                        subtxtStyle.copyWith(color: mainColor, fontSize: 18)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ));
                },
              ),
            ),
            Container(
              color: mainColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //left arrow
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      child: const SizedBox(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.keyboard_arrow_left_rounded,
                          size: 40,
                          color: bg,
                        ),
                      ),
                      onTap: () {
                        _pageController.animateToPage(previous(),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceInOut);
                      },
                    ),
                  ),
                  //points
                  Row(
                    children: [
                      for (int i = 0; i < _list.length; i++)
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: points(i),
                        ),
                    ],
                  ),
                  //right arrow
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      child: const SizedBox(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.keyboard_arrow_right_rounded,
                          size: 40,
                          color: bg,
                        ),
                      ),
                      onTap: () {
                        _pageController.animateToPage(next(),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceInOut);
                      },
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

  int previous() {
    int previous = --current;
    if (previous == -1) {
      previous == _list.length - 1;
    }
    return previous;
  }

  int next() {
    int next = ++current;
    if (next == -_list.length) {
      next == 0;
    }
    return next;
  }

  Widget points(int index) {
    if (index == current) {
      return const Icon(
        Icons.circle_outlined,
        color: bg,
        size: 20,
      );
    } else {
      return const Icon(
        Icons.circle_rounded,
        color: bg,
        size: 20,
      );
    }
  }
}
