import 'package:flutter/material.dart';

Color confirmedColor = Color(0xFFFF1242);
Color activeColor = Color(0xFF017BFF);
Color recoveredColor = Color(0xFF29A746);
Color deathColor = Color(0xFF6D757D);
String introduction =
    "A very cordial welcome to the Hope-Simpson project! We created a platform based on modern databases, visualization, web design, virtual machines, signal processing, and data analysis. We analyzed COVID-19 data on our platform based on Robert Edgar Hope-Simpson's perspective and his study of the spread of the influenza virus.";

RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
String formatFunc(Match match) => '${match[1]}.';
