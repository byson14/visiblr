// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:visiblr/IntroScreens/Screen1.dart';
import 'package:visiblr/IntroScreens/Screen2.dart';
import 'package:visiblr/IntroScreens/Screen3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();
  bool onlastPage = false;
  bool onFirstpage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        onPageChanged: (index) {
          setState(() {
            onlastPage = (index == 2);
            onFirstpage = (index == 0);
          });
        },
        controller: _controller,
        children: const [ScreenOne(), ScreenTwo(), ScreenThree()],
      ),
      Container(
          alignment: const Alignment(0, 0.85),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            //Text to say Skip
            onFirstpage
                ? GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(fontSize: 17),
                    ))
                : onlastPage
                    ? const Text("")
                    : GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(0);
                        },
                        child: const Text(
                          "Previous",
                          style: TextStyle(fontSize: 17),
                        )),

            SmoothPageIndicator(controller: _controller, count: 3),

            //Next or Done

            onlastPage
                ? GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/homeScreen');
                    },
                    child: const Text("Done", style: TextStyle(fontSize: 17)))
                : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text("Next", style: TextStyle(fontSize: 17)))
          ]))
    ]));
  }
}
