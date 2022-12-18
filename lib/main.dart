import 'package:app/pages/bonus_saldo_page.dart';
import 'package:app/pages/get_started_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/sign_up_page.dart';
import 'package:app/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/start':(context) => GetStartedPage(),
        '/home':(context) => HomePage(),
        '/sign':(context) => SignUpPage(),
        '/bonus':(context) => BonusSaldoPage(),
      },
    );
  }
}
