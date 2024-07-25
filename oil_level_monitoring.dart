//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OilLevelMonitoring extends StatefulWidget {
  const OilLevelMonitoring({super.key});

  @override
  State<OilLevelMonitoring> createState() => _OilLevelMonitoringState();
}

class _OilLevelMonitoringState extends State<OilLevelMonitoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Oil Level Monitoring'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.oil_barrel, 
              size: 100.0, 
              color: Colors.black, 
            ),
            SizedBox(height: 20.0), 
            Text(
              'Fuel is Low',
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