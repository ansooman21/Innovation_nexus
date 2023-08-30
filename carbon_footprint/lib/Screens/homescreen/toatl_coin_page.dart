import 'package:flutter/material.dart';

class TotalCoinsPage extends StatelessWidget {
  final int totalCoins;

  TotalCoinsPage(this.totalCoins);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Total Coins Earned'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, size: 100, color: Colors.amber),
            SizedBox(height: 20),
            Text(
              'Total Coins Earned',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '$totalCoins Coins',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
