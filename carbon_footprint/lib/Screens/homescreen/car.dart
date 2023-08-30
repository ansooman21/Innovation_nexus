import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Import the fl_chart library

class CarCalculator extends StatefulWidget {
  final ValueChanged<double> onCarEmissionChanged;

  CarCalculator({required this.onCarEmissionChanged});
  @override
  _CarCalculatorState createState() => _CarCalculatorState();
}

class _CarCalculatorState extends State<CarCalculator> {
  double distance = 0.0;
  double fuelEfficiency = 0.0;
  double carbonEmission = 0.0;

  void calculateCarbonEmission() {
    setState(() {
      widget.onCarEmissionChanged(carbonEmission);
      carbonEmission = (distance / fuelEfficiency) *
          2.31; // Average CO2 emissions in kg per liter of gasoline
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Car Carbon Footprint Calculator',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Distance (km)',
          ),
          onChanged: (value) {
            setState(() {
              distance = double.parse(value);
            });
          },
        ),
        SizedBox(height: 16.0),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Fuel Efficiency (km/l)',
          ),
          onChanged: (value) {
            widget.onCarEmissionChanged(double.parse(value));
            setState(() {
              fuelEfficiency = double.parse(value);
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
                color: Colors.green,
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
