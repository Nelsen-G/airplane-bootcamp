import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/widget/customScroll.dart';
import 'package:app/widget/customScrollv2.dart';
import 'package:app/widget/bottomNav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget HorizontalScroll() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.only(right: 24),
          child: Row(
            children: [
              GestureDetector(
                
                child: CustomScroll(
                    imgUrl: 'assets/ciliwung.png',
                    title: 'Lake Ciliwung',
                    city: 'Tangerang',
                    star: '4.8'),
              ),

              SizedBox(
                width: 30,
              ),

              CustomScroll(
                  imgUrl: 'assets/whitehouse.png',
                  title: 'White Houses',
                  city: 'Spain',
                  star: '4.7'),

              SizedBox(
                width: 30,
              ),


              CustomScroll(
                  imgUrl: 'assets/hillheyo.png',
                  title: 'Hill Heyo',
                  city: 'Monaco',
                  star: '4.8'),


              SizedBox(
                width: 30,
              ),

              CustomScroll(
                  imgUrl: 'assets/menarra.png',
                  title: 'Menarra',
                  city: 'Japan',
                  star: '5.0'),

              SizedBox(
                width: 30,
              ),


              CustomScroll(
                  imgUrl: 'assets/payungteduh.png',
                  title: 'Payung Teduh',
                  city: 'Singapore',
                  star: '5.0'),
            ],
          ),
        ),
      );
    }

    Widget VerticalScroll() {
      return Column(
        children: [
          CustomScrollv2(
            imgUrl: 'assets/beratan2.png',
            title: 'Danau Beratan',
            city: 'Singajara',
              star: '4.5'

          ),
          CustomScrollv2(
            imgUrl: 'assets/opera2.png',
            title: 'Sydney Opera',
            city: 'Australia',
              star: '4.7'
          ),
          CustomScrollv2(
            imgUrl: 'assets/roma2.png',
            title: 'Roma',
            city: 'Italy',
              star: '4.8'
          ),
          CustomScrollv2(
            imgUrl: 'assets/payung2.png',
            title: 'Payung Teduh',
            city: 'Singapore',
              star: '4.5'
          ),

          CustomScrollv2(
            imgUrl: 'assets/hillheyo2.png',
            title: 'Hill Heyo',
            city: 'Monaco',
              star: '4.7'
          ),



        ],
      );
    }


    Widget content() {
      return ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 28,
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Row(
                      children: <Widget>[


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                            Text(
                              'Howdy,',
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(31, 20, 73, 1),
                              ),
                            ),

                            Text(
                              'Kezia Anne',
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(31, 20, 73, 1),
                              ),
                            ),


                          ],
                        ),

                        SizedBox(
                          width: 130,
                        ),


                        CircleAvatar(
                          backgroundImage: AssetImage('assets/profilepicture.png'),
                          radius: 35,
                        )

                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      'Where to fly today?',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(150, 152, 169, 1),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    HorizontalScroll(),
                    SizedBox(
                      height: 40,
                    ),


                    Text(
                      'New This Year',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(31, 20, 73, 1),
                      ),
                    ),


                    SizedBox(
                      height: 20,
                    ),

                    VerticalScroll(),


                    SizedBox(
                      height: 100,
                    ),
                  ],


            ),

          ),
        ],
      );
    }


    Widget BottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(
            top: 25,
            left: 60,
            right: 60,
          ),

          color: Colors.white,
          height: 85,

          width: MediaQuery.of(context).size.width,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              GestureDetector(
                child: bottomNav(
                  imgUrl: 'assets/fi_globe.png',
                ),
              ),

              GestureDetector(
                child: bottomNav(
                  imgUrl: 'assets/fi_book-open.png',
                ),
              ),

              GestureDetector(
                child: bottomNav(
                  imgUrl: 'assets/fi_credit-card.png',
                ),
              ),

              GestureDetector(
                child: bottomNav(
                  imgUrl: 'assets/fi_settings.png',
                ),
              ),

            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            content(),
            BottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}

