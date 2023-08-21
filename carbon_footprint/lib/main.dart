//import 'package:carbon_footprint/Screens/OnBoardingScreen/OnBoard.dart';
import 'package:carbon_footprint/Screens/onboardingscreen/logopage.dart';
//import 'package:carbon_footprint/bottomBar/navigatorbar.dart';
import 'package:flutter/material.dart';

//import 'Screens/home.dart';

void main() {
  runApp(CarbonFootprintApp());
}

class CarbonFootprintApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => CarbonFootprintScreen(),
      // },
      debugShowCheckedModeBanner: false,
      title: 'Carbon Footprint Calculator',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Logopage(),
    );
  }
}
