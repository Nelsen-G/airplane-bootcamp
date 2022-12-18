import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScroll extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? city;
  final String? star;

  const CustomScroll({
    this.imgUrl,
    this.title,
    this.city,
    this.star,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(150),

          width: 200,
          height: 250,


          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: AssetImage(imgUrl!),
              fit: BoxFit.cover,

            ),


          ),


          child: Container(

            width: 50,
            height: 50,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),



            child: Row(

              children: [
                Image.asset(
                  'assets/star.png',
                  width: 24,
                ),

                SizedBox(
                  width: 3,
                ),

                Text(
                  star!,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,

                  ),

                ),
              ],
            ),



          ),

        ),

        SizedBox(
          height: 15,
        ),

        Container(
          width: 125,
          padding: EdgeInsets.only(
            right: 4,
            left: 4,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  title!,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Color.fromRGBO(31, 20, 73, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),


              SizedBox(
                height: 6,
              ),

              Text(
                city!,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Color.fromRGBO(150, 152, 169, 1),
                  fontWeight: FontWeight.w300,
                ),
              ),

              SizedBox(
                height: 6,
              ),

              Row(

                children: [
                  Image.asset(
                    'assets/star.png',
                    width: 24,
                  ),

                  SizedBox(
                    width: 3,
                  ),

                  Text(
                    star!,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,

                    ),

                  ),
                ],
              ),




            ],



          ),
        )

      ],


    );
  }
}
