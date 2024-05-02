import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle boldTextFieldStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mainfont');
  }

  static TextStyle HeaderTextFieldStyle() {
    return const TextStyle(
        color: Colors.red,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mainfont');
  }

  static TextStyle LightTextFieldStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mainfont');
  }

  static TextStyle semiTextFieldStyle() {
    return const TextStyle(
        color: Colors.red,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Mainfont');
  }

  static TextStyle pTextFieldStyle() {
    return const TextStyle(
        color: Colors.black87,
        fontSize: 13.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Mainfont');
  }

  static TextStyle hinttext() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 10.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Mainfont');
  }

  static TextStyle linkText() {
    return const TextStyle(
        color: Colors.red,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Mainfont');
  }
}
