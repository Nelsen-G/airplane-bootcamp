import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class BonusSaldoPage extends StatelessWidget {
  const BonusSaldoPage({super.key});

  @override
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
            'Start Fly Now',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 100,
            ),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  padding: EdgeInsets.only(
                    left: 25,
                    top: 25,
                  ),
                  height: 200,
                  width: 300,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    image: DecorationImage(
                      image: AssetImage('assets/bonus.png'),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(
                        height: 5,
                      ),

///////////
                      Row(
                        children: <Widget>[


                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[

                              Text(
                                'Name',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Kezia Anne',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),



                            ],
                          ),

                          SizedBox(
                            width: 70,
                          ),

                          Image.asset('assets/Airplane.png',
                            width: 24,
                            height: 24,
                          ),
                          // CircleAvatar(
                          //   backgroundImage: AssetImage('assets/Airplane.png'),
                          //   radius: 35,
                          // )
                          SizedBox(
                            width: 10,
                          ),

                          Text(
                            'Pay',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),


                        ],
                      ),
                      //////////////




                      SizedBox(
                        height: 25,
                      ),


                      Text(
                        'Balance',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'IDR 280.000.000',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),




                    ],
                  ),


                ),


                SizedBox(
                  height: 80,
                ),

                Text(
                  'Big Bonus 🎉',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(31, 20, 73, 1),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),


                Text(
                  'We give you early credit so that',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(150, 152, 169, 1),
                  ),
                ),

                Text(
                  'you can buy a flight ticket',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(150, 152, 169, 1),
                  ),
                ),



                SizedBox(
                  height: 45,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: getButton(),
                ),

              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            content(),


          ],
        ),
      ),
    );
  }
}
