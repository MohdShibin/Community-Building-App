import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../pages/home_page.dart';

class AuthDecider extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return HomePage();
    } else {
      return LoginPage();
    }
  }
}