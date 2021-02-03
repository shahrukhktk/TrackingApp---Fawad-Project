import 'package:flutter/material.dart';
import 'package:trackingapp/screens/booksamurai.dart';

void main() => runApp(new MaterialApp(
  theme: ThemeData(
    // primaryColor: AppColors.themecolor,
    // accentColor: AppColors.accentcolor,
    fontFamily: "Roboto",
  ),
  debugShowCheckedModeBanner: false,
  home: BookSamuraiScreen(),
));