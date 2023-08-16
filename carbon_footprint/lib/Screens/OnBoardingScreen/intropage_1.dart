//import 'package:carbon_footprint/Screens/OnBoardingScreen/intro_page2.dart';
//import 'package:carbon_footprint/bottomBar/navigatorbar.dart';
import 'package:flutter/material.dart';

class Intropage1 extends StatelessWidget {
  const Intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(40, 100, 50, 0),
            child: Image.asset(
              'assets/images/carbon1bg.png',
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: Text(
              'Welcome..',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Text('Small steps today, lighter carbon footprint tomorrow.',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.black.withOpacity(0.6),
                )
                //DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                ),
          ),
        ],
      ),
    );
  }
}
