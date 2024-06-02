import 'package:flutter/material.dart';

class MyColors{
  MyColors._();

  //Default color
  static const Color primaryColor = Color(0xFF3a86ff);
  static const Color secondaryColor = Color(0xFFFFE248);
  static const Color accentColor = Color(0xFFB0C7FF);

  //Text color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textAccent = Color(0xFFF3F5FF);

  //Button color
  static const Color buttonPrimary = Color(0xFF3a86ff);
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisable = Color(0xFFF3F5FF);

  //Background color
  static const Color light = Color(0xFFF5F5F5);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF5F5F5);

  //Background container color
  static const Color lightContainer = Color(0xFFF5F5F5);
  static Color darkContainer = MyColors.white.withOpacity(0.1);

  //Border color
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  //Error and Validation color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3c);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFFEC7247);

  //Gradient color
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xFFFF9a9e),
        Color(0xFFFAD0C4),
        Color(0xFFFAD0C4),
      ]
  );

  //Neutral color
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}