import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScrollv2 extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? city;
  final String? star;

  const CustomScrollv2({
    this.imgUrl,
    this.title,
    this.city,
    this.star,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(right: 28),
          height: 90,
          width: MediaQuery.of(context).size.width - 48,
          margin: EdgeInsets.only(bottom: 24),
          child: Row(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(45),
                  child: Image.asset(imgUrl!, fit: BoxFit.cover),
                ),
              ),

              // ClipRRect(
              //   child: SizedBox.fromSize(
              //     size: Size.fromRadius(18),
              //     child: Image.asset(imgUrl!, fit: BoxFit.cover),
              //   ),
              // ),

              // Container(
              //   height: 120,
              //   width: 120,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(18),
              //
              //   ),
              //   child: Image.asset(
              //     imgUrl!,
              //     height: 100,
              //     width: 100,
              //     fit: BoxFit.contain,
              //   ),
              // ),

              // Image.asset(
              //   imgUrl!,
              //   width: 100,
              //   height: 100,
              //   fit: BoxFit.contain,
              // ),
              SizedBox(
                width: 15,
              ),

              Expanded(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title!,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(31, 20, 73, 1),
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Text(
                      city!,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(150, 152, 169, 1),
                      ),
                    ),

                  ],
                ),
              ),

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
      ],
    );
  }
}
