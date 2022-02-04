import 'package:flutter/material.dart';

final theme = ThemeData(
    //2
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Montserrat', //3
    buttonTheme: ButtonThemeData(
      // 4
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      buttonColor: Colors.purple.shade300,
    ));
