import 'package:flutter/material.dart';

void main() {
  runApp(CarbonCalculatorApp());
}

class CarbonCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final Map<String, double> foodCarbonData = {
    'Beef': 13.5,
    'Chicken': 6.9,
    'Rice': 2.7,
    'Lentils': 0.9,
  };

  Map<String, bool> selectedFoods = {
    'Beef': false,
    'Chicken': false,
    'Rice': false,
    'Lentils': false,
  };

  double totalCarbonEmission = 0.0;

  void calculateTotalCarbon() {
    double total = 0.0;
    for (var food in selectedFoods.keys) {
      if (selectedFoods[food] == true) {
        total += foodCarbonData[food] ?? 0.0;
      }
    }
    setState(() {
      totalCarbonEmission = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carbon Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select the foods you ate:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            for (var food in selectedFoods.keys)
              ListTile(
                title: Text(
                  food,
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Checkbox(
                  value: selectedFoods[food],
                  onChanged: (value) {
                    setState(() {
                      selectedFoods[food] = value ?? false;
                      calculateTotalCarbon();
                    });
                  },
                ),
              ),
            SizedBox(height: 30),
            Text(
              'Total Carbon Emission:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '$totalCarbonEmission kg CO2eq',
              style: TextStyle(fontSize: 36, color: Colors.green),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedFoods.forEach((food, isSelected) {
                    selectedFoods[food] = false;
                  });
                  calculateTotalCarbon();
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Clear Selection',
                style: TextStyle(
                  fontSize: 16,
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
