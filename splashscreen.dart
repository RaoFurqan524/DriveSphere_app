import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LogIn() )
      );
    });
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepOrange,Colors.deepPurple],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.car_repair,size: 90,color: Colors.white,),
            SizedBox(height: 20,),
            Text('Drive Sphere', style: TextStyle(
              fontSize: 30, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}