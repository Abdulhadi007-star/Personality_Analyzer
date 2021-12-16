import 'package:flutter/material.dart';
import 'package:personality/auth_controller.dart';
import 'package:personality/signUp.dart';

import 'homePage.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  var formkey = GlobalKey<FormState>();
  var passkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                child: Text(
                  'There.',
                  style: TextStyle(
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 80),
                child: Form(
                  key: formkey,
                  child: TextFormField(
                    controller: emailController,
                    autocorrect: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Some text';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email Here...',
                      errorStyle: TextStyle(
                        color: Colors.deepOrange,
                      ),
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Form(
                  key: passkey,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    autocorrect: true,
                    validator: (value) {
                      if (value == null || value.length < 8 || value.isEmpty) {
                        return 'Please Enter at least 8 letters';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Password Here...',
                      prefixIcon: Icon(Icons.security),
                      errorStyle: TextStyle(
                        color: Colors.deepOrange,
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  AuthController.instance.login(emailController.text.trim(),
                      passwordController.text.trim());
                  if (formkey.currentState!.validate() &&
                      passkey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homePage()));
                  }
                },
                child: Text('Sign in'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.blue,
                  onPrimary: Colors.tealAccent,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signUp()));
                },
                child: Text.rich(
                  TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: ' SignUp',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
