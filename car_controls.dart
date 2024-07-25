import 'package:flutter/material.dart';

class Carcontrols extends StatefulWidget {
  const Carcontrols({super.key});

  @override
  State<Carcontrols> createState() => _CarcontrolsState();
}

class _CarcontrolsState extends State<Carcontrols> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Car Controls'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle Upward button press
                },
                child: Icon(Icons.arrow_upward),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Left button press
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isOn = !isOn;
                      });
                    },
                    child: Icon(isOn ? Icons.power : Icons.power_off),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Right button press
                    },
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle Backward button press
                },
                child: Icon(Icons.arrow_downward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}