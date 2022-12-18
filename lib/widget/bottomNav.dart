import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bottomNav extends StatelessWidget {
  final String? imgUrl;

  const bottomNav({
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgUrl!,
          width: 20,
        ),
        SizedBox(
          height: 10,
        ),

      ],
    );
  }
}
