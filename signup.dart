//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_car/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Sign up'),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: double.infinity,height: 15.0,),
              const Text(' Create your account',style: TextStyle(fontSize: 32.0),),
              const SizedBox(width: double.infinity,height: 15.0,),
              Form(
                  //key: _globalKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          //controller: _username,
                          //validator: (value) =>_validateUsername(value),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Enter Username',
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          //controller: _password,
                          //validator: (value) => _validatePassword(value),
                        obscureText: false,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
                          prefixIcon: const Icon(Icons.mail),
                          
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          //controller: _password,
                          //validator: (value) => _validatePassword(value),
                        obscureText: true,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: const Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          //controller: _password,
                          //validator: (value) => _validatePassword(value),
                        obscureText: false,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          hintText: 'Enter phone number',
                          prefixIcon: const Icon(Icons.phone_iphone_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                  ),
                  const SizedBox(width: double.infinity,height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const SizedBox(width: 25,height: 15.0),
                       ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){return const LogIn();},),);
                        }, 
                        child: Text('Sign up',),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                         ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}