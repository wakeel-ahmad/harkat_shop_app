import 'package:flutter/material.dart';

class ThemeColors {
  static ThemeColors? _instance;
  static ThemeColors get instance {
    return _instance ?? ThemeColors._();
  }

  ThemeColors._();

  MaterialColor primaryColor = const MaterialColor(
    0xFF405EAB,
    {
      50: Color.fromRGBO(64, 94, 171, .1),
      100: Color.fromRGBO(64, 94, 171, .2),
      200: Color.fromRGBO(64, 94, 171, .3),
      300: Color.fromRGBO(64, 94, 171, .4),
      400: Color.fromRGBO(64, 94, 171, .5),
      500: Color.fromRGBO(64, 94, 171, .6),
      600: Color.fromRGBO(64, 94, 171, .7),
      700: Color.fromRGBO(64, 94, 171, .8),
      800: Color.fromRGBO(64, 94, 171, .9),
      900: Color.fromRGBO(64, 94, 171, 1),
    },
  );
  Color redColor = const Color(0xFFDD4B39);
  // Color headerColor = const Color(0xFF230f34);

  MaterialColor secondryColor = const MaterialColor(
    0xFF367FC0,
    {
      50: Color.fromRGBO(54, 127, 192, .1),
      100: Color.fromRGBO(54, 127, 192, .2),
      200: Color.fromRGBO(54, 127, 192, .3),
      300: Color.fromRGBO(54, 127, 192, .4),
      400: Color.fromRGBO(54, 127, 192, .5),
      500: Color.fromRGBO(54, 127, 192, .6),
      600: Color.fromRGBO(54, 127, 192, .7),
      700: Color.fromRGBO(54, 127, 192, .8),
      800: Color.fromRGBO(54, 127, 192, .9),
      900: Color.fromRGBO(54, 127, 192, 1),
    },
  );
}
