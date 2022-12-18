import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  // Widget build(BuildContext context) {
  //
  //   return MaterialApp(
  //
  //     home: Scaffold(
  //
  //       body: Container(
  //         decoration: BoxDecoration(
  //           image: DecorationImage(
  //             image: AssetImage("assets/backgroundLoading.png"),
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //         child: null /* add child content here */,
  //       ),
  //
  //     ),
  //   );
  //
  // }

  Widget build(BuildContext context) {

    Widget getButton() {
      return Container(
        height: 55,
        width: 220,
        decoration: BoxDecoration(
          color: Color.fromRGBO(92, 64, 204, 1.0),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      );
    }



    return Scaffold(

      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/backgroundLoading.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                alignment: Alignment.center,
                child:

                // Text(
                //   'Fly Like a Bird',
                //   style: GoogleFonts.poppins(
                //     fontSize: 32,
                //     fontWeight: FontWeight.w600,
                //     color: Colors.white,
                //   ),
                // ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    SizedBox(
                      height: 400,
                    ),

                    Text(
                      'Fly Like a Bird',
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      'Explore new world with us and let',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      'yourself get an amazing experiences',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),


                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign');
                      },
                      child: getButton(),
                    ),

                  ],
                ),



            ),
          ],
        ),
      ),
    );
  }


}
