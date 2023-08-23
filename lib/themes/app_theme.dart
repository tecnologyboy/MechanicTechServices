import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.blue.shade900;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white10,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white10,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          textStyle: const TextStyle(color: Colors.black),
          shape: const StadiumBorder(),
        ),
      ),
      appBarTheme: AppBarTheme(elevation: 0, backgroundColor: primary));
}
