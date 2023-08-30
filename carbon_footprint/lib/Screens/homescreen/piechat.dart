import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Import the fl_chart library

class OverallPieChart extends StatelessWidget {
  final double foodEmission;
  final double carEmission;

  OverallPieChart({required this.foodEmission, required this.carEmission});

  @override
  Widget build(BuildContext context) {
    double totalEmission = foodEmission + carEmission;

    return Column(
      children: [
        Text(
          'Overall Carbon Emission Distribution',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        PieChart(
          PieChartData(
            sections: [
              PieChartSectionData(
                title: 'Food',
                value: foodEmission,
                color: Colors.blue,
              ),
              PieChartSectionData(
                title: 'Car',
                value: carEmission,
                color: Colors.green,
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          'Total Carbon Emission: ${totalEmission.toStringAsFixed(2)} kg CO2',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
