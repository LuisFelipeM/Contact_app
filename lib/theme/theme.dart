import 'package:flutter/material.dart';

class customAppTheme {
  // Custom Color for text
  static const Color primary = Colors.blueGrey;
  static const Color secondary = Colors.white;

  // Custom theme example
  static final ThemeData contactTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: secondary,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0,
    ),
  );

  // Example of a custom theme using the light theme as base you can change light to dark
  // static final ThemeData CustomTheme = ThemeData.dark().copyWith(
  static final ThemeData CustomTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: secondary,
    backgroundColor: Colors.red,
    brightness: Brightness.dark,
  );
}
