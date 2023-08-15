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
        PageView(
          controller: _controller,
          children: [Intropage1(), Intropage2(), Intropage3()],
        ),
        //dot indicators
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green),
                ),
              ),
              SmoothPageIndicator(controller: _controller, count: 3),

              //next home page
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text(
                        'next',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return BottomNavigatorBar();
                          }),
                        );
                      },
                    ),
            ],
          ),
        ),
      ],
    ));
  }
}
