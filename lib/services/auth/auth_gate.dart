import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/page/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:thydelivery_mobileapp/services/auth/login_or_register.dart';

class AuthGate extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginOrRegister();
          }
        },
      ),
    );
  }
}
