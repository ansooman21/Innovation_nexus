import 'package:carbon_footprint/Screens/OnBoardingScreen/intro_page1.dart';
import 'package:carbon_footprint/Screens/OnBoardingScreen/intro_page2.dart';
import 'package:carbon_footprint/Screens/OnBoardingScreen/intro_page3.dart';
import 'package:carbon_footprint/bottomBar/navigatorbar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _start1State();
}

class _start1State extends State<OnBoardingScreen> {
//controller to keep the track of which page we are on

  PageController _controller = PageController();

  //keep track of if we are on last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: _controller,
              children: [Intropage1(), Intropage2(), Intropage3()],
            ),
          ),
          //dot indicators

          Container(
            alignment: Alignment(0, 0.87),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
        ],
      ),
    );
  }
}
