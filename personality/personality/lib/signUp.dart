import 'package:flutter/material.dart';
import 'package:personality/auth_controller.dart';
import 'package:personality/signIn.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  var namekey = GlobalKey<FormState>();
  var formkey = GlobalKey<FormState>();
  var passkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

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
                height: 30,
              ),
              Container(
                child: Text(
                  'Register',
                  style: TextStyle(
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    fontSize: 80,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                child: Text(
                  'Now!',
                  style: TextStyle(
                    letterSpacing: 5,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 70),
                child: Form(
                  key: namekey,
                  child: TextFormField(
                    autocorrect: true,
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Please Enter Some Text';
                      else
                        return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Your Full Name Here...',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Name',
                      errorStyle: TextStyle(
                        color: Colors.deepOrange,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 30),
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
                      hintText: 'Enter Your Email Here',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                      errorStyle: TextStyle(
                        color: Colors.deepOrange,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 30),
                child: Form(
                  key: passkey,
                  child: TextFormField(
                    controller: passwordController,
                    autocorrect: true,
                    validator: (value) {
                      if (value == null || value.length < 8 || value.isEmpty) {
                        return 'Please Enter at least 8 letters';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password Here',
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.security),
                      labelText: 'Password',
                      errorStyle: TextStyle(
                        color: Colors.deepOrange,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (namekey.currentState!.validate() &&
                      formkey.currentState!.validate() &&
                      passkey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signIn()));
                  }
                  AuthController.instance.register(emailController.text.trim(),
                      passwordController.text.trim());
                },
                child: Text('Sign Up'),
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
                      MaterialPageRoute(builder: (context) => signIn()));
                },
                child: Text.rich(
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: ' SignIn',
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
