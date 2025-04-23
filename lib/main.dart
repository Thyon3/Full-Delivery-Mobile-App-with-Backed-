import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thydelivery_mobileapp/firebase_options.dart';
import 'package:thydelivery_mobileapp/models/restaurant.dart';
import 'package:thydelivery_mobileapp/services/auth/auth_gate.dart';
import 'package:thydelivery_mobileapp/theme/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        //Theme Provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        //Restaurant provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
