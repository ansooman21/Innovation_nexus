import 'package:flutter/material.dart';

class Intropage1 extends StatelessWidget {
  const Intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('WELCOME',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 50, 0),
            child: Image.asset('assets/images/carbon1bg.png'),
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
          )
        ],
      ),
    );
  }
}
