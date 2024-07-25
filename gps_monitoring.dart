//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GPSMonitoring extends StatefulWidget {
  const GPSMonitoring({super.key});

  @override
  State<GPSMonitoring> createState() => _GPSMonitoringState();
}

class _GPSMonitoringState extends State<GPSMonitoring> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('GPS Monitoring'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 100.0, 
              color: Colors.blue, 
            ),
          ],
        ),
      ),
    );
  }
}