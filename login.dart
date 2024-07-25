import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:smart_car/dashboard.dart';
import 'package:smart_car/signup.dart';
import 'package:smart_car/tabscontroller.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  GlobalKey<FormState> _globalKey = new GlobalKey();

  TextEditingController _username =TextEditingController();
  TextEditingController _password =TextEditingController();
  void _signIn( BuildContext context) async {

    if(_globalKey.currentState!.validate()){
      String? username_entered = _username.text;
      String? password_entered = _password.text;

      _username.clear();
      _password.clear();
    //print('Username Entered =$username_entered');
    //print('Password Entered =$password_entered');
    String response = await Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Dashboard(username_entered)),
        );
        print(response);
    }
  }

  String? _validateUsername (String? value){
    return value!.isEmpty ? 'Username is invalid': null;
  }
  String? _validatePassword (String? value){
    return value!.isEmpty ? 'Password is invalid': null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: const Text('Log In'),
        ),
        body:  SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(width: double.infinity,height: 40.0,),
                const CircleAvatar(
                  backgroundImage: AssetImage('/Users/raofurqan/smart_car/assets/images/smart_car.jpg'),
                  radius:80,
                ),
                const SizedBox(width: double.infinity,height: 15.0,),
                const Text('Drive Sphere',style: TextStyle(fontSize: 28.0),),
                Form(
                  key: _globalKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: _username,
                          validator: (value) =>_validateUsername(value),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Enter Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: _password,
                          validator: (value) => _validatePassword(value),
                        obscureText: true,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
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
                      ElevatedButton(
                        onPressed: () => _signIn(context),
                         child:  Text('Log In'),
                         style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                         ),
                        ),
                        const SizedBox(width: 25,height: 15.0),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){return const Signup();},),);
                        }, 
                        child: Text('Sign up'),
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
                  const SizedBox(width: double.infinity,height: 10.0),
                  TextButton(onPressed: (){}, child: const Text('Forget Password')),
              ],
            ),
          ),
          ),
    );
  }
}