import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildCategoryContainer(
    String text, Color backgroundColor, Color textColor,
    {Icon? icon}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Color(0xffF0F1FA)),
      color: backgroundColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) icon,
        SizedBox(
            width:
                icon != null ? 8 : 0), // Add some spacing if icon is provided
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
            fontFamily: GoogleFonts.nunito().fontFamily,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
