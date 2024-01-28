import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle styleTitleText({
  double fontSize = 18,
  FontWeight fontWeight = FontWeight.w700,
  Color color = Colors.black,
}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: GoogleFonts.gelasio().fontFamily);
}

TextStyle styleNumberText(
    {double fontSize = 14,
    FontWeight fontWeight = FontWeight.w700,
    Color color = Colors.black}) {
  return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
}

TextStyle styleBodyText(
    {double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color color = Colors.black}) {
  return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color,
 fontFamily: GoogleFonts.nunitoSans().fontFamily);
}
