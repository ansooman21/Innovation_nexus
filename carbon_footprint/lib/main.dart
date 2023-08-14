import 'package:carbon_footprint/bottomBar/navigatorbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CarbonFootprintApp());
}

class CarbonFootprintApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carbon Footprint Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomNavigatorBar(),
    );
  }
}
