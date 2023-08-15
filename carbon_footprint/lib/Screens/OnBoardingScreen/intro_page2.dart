import 'package:flutter/material.dart';

class Intropage2 extends StatelessWidget {
  const Intropage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(40, 100, 50, 0),
            child: Image.asset(
              'assets/images/carbon2bg.png',
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('REDUCE',
                style: TextStyle(fontSize: 30, color: Colors.green)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Text(
                'Reusing our carbon footprint, stitching a greener path for the future.',
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
