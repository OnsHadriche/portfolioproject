import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  canvasColor: const Color.fromARGB(255, 255, 255, 255),
  cardColor: Colors.indigo[50],
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
        fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 14, 13, 13),
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: Colors.grey.shade600,
    ),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: const Color.fromARGB(255, 31, 61, 107),
    secondary: Colors.lightBlue.shade900,
    tertiary: Color.fromARGB(255, 34, 121, 179),
  ),
);
