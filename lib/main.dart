import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thydelivery_mobileapp/auth/login_or_register.dart';
import 'package:thydelivery_mobileapp/page/register_page.dart';
import 'package:thydelivery_mobileapp/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
