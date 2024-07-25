//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:smart_car/battery_percentage.dart';
import 'package:smart_car/car_controls.dart';
import 'package:smart_car/gps_monitoring.dart';
import 'package:smart_car/login.dart';
import 'package:smart_car/oil_level_monitoring.dart';

class Dashboard extends StatefulWidget {
  
  String ? name;
  Dashboard(this.name, {super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin {

  
  bool _signout_confirmation= false;
  Future<void> _logOut(BuildContext context) async {
    Widget yesButton =  TextButton(
      onPressed: () => setState(() {
        _signout_confirmation= true;
        //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return LogIn();}));
        Navigator.pop(context);
      }), 
      child: const Text('Yes'));

      Widget noButton =  TextButton(
      onPressed: () => setState(() {
        _signout_confirmation = false;

        //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Dashboard(widget.name!);}));
        Navigator.of(context).pop(false);
      }), 
      child: const Text('No')
      );

      AlertDialog _alert = AlertDialog(
        title: const Text('Log Out'),
        content: const Text('Are you sure you want to Log Out?'),
        actions: [
          yesButton,
          noButton,
        ],
      );

      await showDialog(
        context: context, 
        builder: (context){
          return _alert;
        }
      );
    Navigator.pop(context, "Logged Out Succesfully");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
        title: Text('Welcome ' + widget.name!),
        actions: [
          IconButton(
            onPressed:() => _logOut(context),
            color: Colors.black,
             icon: const Icon(Icons.logout_rounded)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Car Controls
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return Carcontrols();},),);
                },
                child: Container(
                  height: 200,
                  width: 450,
                  child: const Card(
                    elevation: 10.0,
                    color: Colors.deepPurple,
                    shadowColor: Colors.deepPurpleAccent,
                    margin: EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(
                        Radius.circular(10.0),
                        ),
                         ),
                         child: Center(
                          child:Text('Car Controls',style: TextStyle(fontSize: 24),),
                          ),
                         ),
                         ),
              ),

               //GPS Monitoring
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return GPSMonitoring();},),);
                },
                child: Container(
                  height: 200,
                  width: 450,
                  child: const Card(
                    elevation: 10.0,
                    color: Colors.deepPurple,
                    shadowColor: Colors.deepPurpleAccent,
                    margin: EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(
                        Radius.circular(10.0),
                        ),
                         ),
                         child: Center(
                          child:Text('GPS Monitoring',style: TextStyle(fontSize: 24),),
                          ),
                         ),
                         ),
              ),
               //Oil Level Monitoring
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return OilLevelMonitoring();},),);
                },
                child: Container(
                  height: 200,
                  width: 450,
                  child: const Card(
                    elevation: 10.0,
                    color: Colors.deepPurple,
                    shadowColor: Colors.deepPurpleAccent,
                    margin: EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(
                        Radius.circular(10.0),
                        ),
                         ),
                        child: Center(
                      child:Text('Oil Level Monitoring',style: TextStyle(fontSize: 24),),
                    ),
                  ),
                ),
              ),
              //Battery Management
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return const BatteryPercentage();},),);
                },
                child: Container(
                  height: 200,
                  width: 450,
                  child: const Card(
                    elevation: 10.0,
                    color: Colors.deepPurple,
                    shadowColor: Colors.deepPurpleAccent,
                    margin: EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.all(
                        Radius.circular(10.0),
                        ),
                         ),
                         child: Center(
                          child:Text('Battery Percentage',style: TextStyle(fontSize: 24),),
                          ),
                         ),
                         ),
              ),         
              ],
            ) ,
          ),
        ),
    );
  }
}