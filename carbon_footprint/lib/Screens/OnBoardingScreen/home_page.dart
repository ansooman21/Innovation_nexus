import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => home_pageState();
}

class home_pageState extends State<home_page> {
  double milesDriven = 0;
  double carbonFootprint = 0;

  void calculateCarbonFootprint() {
    setState(() {
      // Assuming 19.6 pounds of CO2 per gallon of gasoline
      // and an average car fuel efficiency of 25 miles per gallon
      carbonFootprint = milesDriven * (19.6 / 25);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carbon Footprint Calculator')),
      backgroundColor: Colors.green,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Miles Driven per Year:'),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                milesDriven = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: calculateCarbonFootprint,
              child: Text('Calculate Carbon Footprint'),
            ),
            SizedBox(height: 16),
            Text('Carbon Footprint: $carbonFootprint pounds CO2/year'),
          ],
        ),
      ),
    );
  }
}
