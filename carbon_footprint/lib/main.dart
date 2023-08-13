import 'package:flutter/material.dart';

import 'Screens/screen1.dart';

void main() {
  runApp(CarbonFootprintApp());
}

class CarbonFootprintApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lipsa Priyadarshini Mohanty',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CarbonFootprintScreen(),
    );
  }
}
