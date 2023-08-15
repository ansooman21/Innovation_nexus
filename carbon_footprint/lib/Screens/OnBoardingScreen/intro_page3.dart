import 'package:flutter/material.dart';

class Intropage3 extends StatelessWidget {
  const Intropage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Text('REUSE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 50, 50, 0),
            child: Image.asset('assets/images/carbon3bg.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Text('Reduce your footprint, lighten the Earth.',
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
