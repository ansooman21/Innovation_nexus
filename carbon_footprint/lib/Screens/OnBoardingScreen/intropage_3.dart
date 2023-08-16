//import 'package:carbon_footprint/Screens/onboardingscreen/home_page.dart';
import 'package:carbon_footprint/bottomBar/navigatorbar.dart';
import 'package:flutter/material.dart';

class Intropage3 extends StatelessWidget {
  const Intropage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(40, 100, 50, 0),
            child: Image.asset(
              'assets/images/carbon3bg.png',
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('REUSE',
                style: TextStyle(fontSize: 30, color: Colors.green)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Text('Reduce your footprint, lighten the Earth.',
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.black.withOpacity(0.6),
                )
                //DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(250, 110, 10, 0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigatorBar()),
                );
              },
              child: Text(
                "Done",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
