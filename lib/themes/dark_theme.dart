import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  canvasColor: const Color.fromARGB(255, 255, 255, 255),
  cardColor: const Color.fromARGB(255, 33, 40, 82),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 219, 213, 213)),
    displayMedium: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 252, 252, 252),
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 241, 239, 239),
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: const Color.fromARGB(255, 48, 42, 42),
    ),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Color.fromARGB(255, 12, 22, 39),
    primary: Color.fromARGB(255, 121, 133, 155)!,
    secondary: Color.fromARGB(255, 231, 25, 25),
    tertiary: Color.fromARGB(255, 253, 255, 255),
  ),
);
