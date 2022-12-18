import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget username() {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(
              color: Color.fromRGBO(31, 20, 73, 1),
            ),
          ),
          hintText: 'Full Name',
          hintStyle: GoogleFonts.poppins(
            color: Color.fromRGBO(31, 20, 73, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      );
    }

    Widget email() {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(
              color: Color.fromRGBO(31, 20, 73, 1),
            ),
          ),
          hintText: 'Email Address',
          hintStyle: GoogleFonts.poppins(
            color: Color.fromRGBO(31, 20, 73, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      );
    }

    Widget password() {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(
              color: Color.fromRGBO(31, 20, 73, 1),
            ),
          ),
          hintText: 'Password',
          hintStyle: GoogleFonts.poppins(
            color: Color.fromRGBO(31, 20, 73, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      );
    }

    Widget hobby() {
      return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(
              color: Color.fromRGBO(31, 20, 73, 1),
            ),
          ),
          hintText: 'Hobby',
          hintStyle: GoogleFonts.poppins(
            color: Color.fromRGBO(31, 20, 73, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
        ),
      );
    }

    Widget getButton() {
      return Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [

            Container(
              margin: EdgeInsets.only(
                top: 50,
                left: 40,
                right: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Text(
                    'Join us and get',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(31, 20, 73, 1),
                    ),
                  ),

                  Text(
                    'your next journey',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(31, 20, 73, 1),
                    ),
                  ),


                  SizedBox(
                    height: 45,
                  ),


                  Text(
                    'Full Name',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),

                  username(),
                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    'Email Address',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(
                    height: 6,
                  ),
                  email(),
                  SizedBox(
                    height: 12,
                  ),

                  Text(
                    'Password',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  password(),
                  SizedBox(
                    height: 12,
                  ),

                  Text(
                    'Hobby',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(
                    height: 6,
                  ),
                  hobby(),

                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/bonus');
                    },
                    child: getButton(),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                ],
              ),
            ),
            Spacer(),

                Text(
                  'Terms and Conditions',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    color: Color.fromRGBO(150, 152, 169, 1)
                  ),
                ),




            SizedBox(
              height: 34,
            ),
          ],
        ),
      ),
    );
  }
}
