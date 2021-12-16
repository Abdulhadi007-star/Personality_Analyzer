import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personality/homePage.dart';
import 'package:personality/signIn.dart';

class AuthController extends GetxController {
  static AuthController instance =
      Get.find(); //To globally access from any page
  late Rx<User?> user;
  FirebaseAuth auth = FirebaseAuth
      .instance; //Using auth, we can access alot of properties of Firebase

  void onReady() {
    super.onReady();
    user = auth.currentUser as Rx<User?>;
    user.bindStream(auth.userChanges()); // User will be notified
    ever(user,
        initalScreen); //Whatever changes done initalScreen funtion will be notified
  }

  initalScreen(User? user) {
    if (user == null) {
      print("login Page");
      Get.offAll(signIn());
    } else {
      Get.offAll(homePage());
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar('About User', 'User message',
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Account Creation Failed',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('About Login', 'Login message',
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            'Login Failed',
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }
}
