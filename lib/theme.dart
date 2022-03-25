import 'package:flutter/material.dart';

final theme = ThemeData(
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: Colors.white,
    scrollbarTheme: ScrollbarThemeData(
      interactive: true,
        isAlwaysShown: true,
        thickness: MaterialStateProperty.all(10),
        thumbColor: MaterialStateProperty.all(Colors.blue),
        radius: const Radius.circular(10),
        minThumbLength: 100),
    fontFamily: 'Montserrat',
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      buttonColor: Colors.purple.shade300,
    ));
