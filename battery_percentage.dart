//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatteryPercentage extends StatefulWidget {
  const BatteryPercentage({super.key});

  @override
  State<BatteryPercentage> createState() => _BatteryPercentageState();
}

class _BatteryPercentageState extends State<BatteryPercentage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Battery Percentage'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.battery_full, 
              size: 100.0, 
              color: Colors.green, 
            ),
            SizedBox(height: 20.0), 
            Text(
              '   100%',
              style: TextStyle(
                fontSize: 24.0, 
                color: Colors.black,  
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}