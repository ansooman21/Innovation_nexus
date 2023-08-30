import 'package:carbon_footprint/Screens/homescreen/toatl_coin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';
//import 'total_coins_page.dart'; // Import your TotalCoinsPage

// class CarbonFootprintScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Carbon Tracker',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CarbonTrackerScreen(),
//     );
//   }
// }

class CarbonFootprintScreen extends StatefulWidget {
  @override
  _CarbonFootprintScreenState createState() => _CarbonFootprintScreenState();
}

class _CarbonFootprintScreenState extends State<CarbonFootprintScreen> {
  double totalCO2 = 0.0;
  int totalCoins = 0;

  String vehicleType = '';
  double vehicleCO2 = 0.0;
  int vehicleCoins = 0;

  String foodType = '';
  double foodCO2 = 0.0;
  int foodCoins = 0;

  double calculatedVehicleCO2 = 0.0;
  double calculatedFoodCO2 = 0.0;

  void addActivity(String activityType, double co2, int coins) {
    setState(() {
      totalCO2 += co2;
      totalCoins += coins;

      if (activityType == 'Car' || activityType == 'Bike') {
        calculatedVehicleCO2 += co2;
      } else if (activityType == 'Vegetarian' ||
          activityType == 'Non-Vegetarian') {
        calculatedFoodCO2 += co2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carbon Tracker'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vehicle Emissions',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    DropdownButton<String>(
                      value: null,
                      onChanged: (value) {
                        setState(() {
                          vehicleType = value!;
                          if (value == 'Car') {
                            vehicleCO2 = 2.0;
                            vehicleCoins = 5;
                          } else {
                            vehicleCO2 = 0.0;
                            vehicleCoins = 0;
                          }
                        });
                      },
                      items: ['None', 'Car', 'Bike']
                          .map<DropdownMenuItem<String>>(
                            (value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ),
                          )
                          .toList(),
                    ),
                    if (vehicleType != 'None')
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            onChanged: (value) {
                              vehicleCO2 = double.tryParse(value) ?? 0.0;
                            },
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            decoration: InputDecoration(
                                labelText: 'CO2 Emissions (kg)'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (vehicleType.isNotEmpty && vehicleCO2 > 0) {
                                addActivity(
                                    vehicleType, vehicleCO2, vehicleCoins);
                              }
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            child: Text('Add'),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food Emissions',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    DropdownButton<String>(
                      value: null,
                      onChanged: (value) {
                        setState(() {
                          foodType = value!;
                          if (value == 'Vegetarian') {
                            foodCO2 = 2.0;
                            foodCoins = 5;
                          } else {
                            foodCO2 = 0.0;
                            foodCoins = 0;
                          }
                        });
                      },
                      items: ['None', 'Vegetarian', 'Non-Vegetarian']
                          .map<DropdownMenuItem<String>>(
                            (value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ),
                          )
                          .toList(),
                    ),
                    if (foodType != 'None')
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            onChanged: (value) {
                              foodCO2 = double.tryParse(value) ?? 0.0;
                            },
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            decoration: InputDecoration(
                                labelText: 'CO2 Emissions (kg)'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (foodType.isNotEmpty && foodCO2 > 0) {
                                addActivity(foodType, foodCO2, foodCoins);
                              }
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            child: Text('Add'),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Calculated Emissions',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    Text(
                        'Vehicle CO2 Emissions: ${calculatedVehicleCO2.toStringAsFixed(2)} kg'),
                    Text(
                        'Food CO2 Emissions: ${calculatedFoodCO2.toStringAsFixed(2)} kg'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TotalCoinsPage(totalCoins),
                  ),
                );
              },
              child: Text('View Total Coins Earned'),
            ),
          ],
        ),
      ),
    );
  }
}
