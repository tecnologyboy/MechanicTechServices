import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.blue.shade900;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white10,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white10,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
    ),
  );
}
