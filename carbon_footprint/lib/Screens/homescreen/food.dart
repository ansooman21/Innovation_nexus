import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Import the fl_chart library

class FoodCalculator extends StatefulWidget {
  final ValueChanged<double> onFoodEmissionChanged;
  FoodCalculator({required this.onFoodEmissionChanged});
  @override
  _FoodCalculatorState createState() => _FoodCalculatorState();
}

class _FoodCalculatorState extends State<FoodCalculator> {
  double foodConsumption = 0.0;
  double carbonEmission = 0.0;

  void calculateCarbonEmission() {
    setState(() {
      carbonEmission = foodConsumption * 1.5;
      widget.onFoodEmissionChanged(
          carbonEmission); // Average CO2 emissions in kg per kilogram of food
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Food Carbon Footprint Calculator',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Food Consumption (kg)',
          ),
          onChanged: (value) {
            widget.onFoodEmissionChanged(double.parse(value));
            setState(() {
              foodConsumption = double.parse(value);
            });
          },
        ),
        SizedBox(height: 24.0),
        ElevatedButton(
          onPressed: () {
            calculateCarbonEmission();
          },
          child: Text('Calculate Carbon Emission'),
        ),
        SizedBox(height: 16.0),
        Text(
          'Carbon Emission: ${carbonEmission.toStringAsFixed(2)} kg CO2',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        // Display the pie chart
        PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(
                title: '\$${carbonEmission.toStringAsFixed(2)}',
                value: carbonEmission,
                color: Colors.blue,
              ),
              PieChartSectionData(
                title: '',
                value: 100.0 - carbonEmission,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
