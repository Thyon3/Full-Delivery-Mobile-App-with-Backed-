import 'package:flutter/material.dart';
import 'package:thydelivery_mobileapp/page/login_page.dart';
import 'package:thydelivery_mobileapp/page/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginOrRegisterState();
  }
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLoginPage = true;

  Widget build(context) {
    void togglePage() {
      setState(() {
        isLoginPage = !isLoginPage;
      });
    }

    if (isLoginPage) {
      return LoginPage(signUp: togglePage);
    } else {
      return SignUpPage(singIn: togglePage);
    }
  }
}
