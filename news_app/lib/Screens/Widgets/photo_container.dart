import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CulomnList extends StatelessWidget {
  const CulomnList(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.height,
      required this.width});
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(
            image,
            width: 360,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10,
          left: 13,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 255, 254, 254),
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.gentiumBookPlus().fontFamily,
                ),
              ),
              SizedBox(
                height: height,
              ),
              Row(
                children: [
                  Text(text2,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 254, 254),
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.gentiumBookPlus().fontFamily,
                      )),
                  SizedBox(
                    width: width,
                  ),
                  Text(text3,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 254, 254),
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.gentiumBookPlus().fontFamily,
                      ))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
