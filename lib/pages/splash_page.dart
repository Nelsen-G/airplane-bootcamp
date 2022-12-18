import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, '/start', (route) => false);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(92, 64, 204, 1),
      body: SafeArea(

        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/Airplane.png',
                height: 100,
                width: 100,
              ),

              SizedBox(
                height: 50,
              ),

              Text(
                'AIRPLANE',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 10,
                  color: Colors.white,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
