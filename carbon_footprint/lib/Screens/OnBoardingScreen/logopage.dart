//import 'package:carbon_footprint/Screens/OnBoardingScreen/intropage_1.dart';
import 'package:carbon_footprint/Screens/onboardingscreen/onBoard.dart';
import 'package:flutter/material.dart';

class Logopage extends StatelessWidget {
  const Logopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/carbon4.png', // Replace with your logo asset
              width: 300,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Carbon Footprint',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Track and reduce your carbon footprint with our app!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnBoardingScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Customize the button color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Start Tracking',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
