import 'package:flutter/material.dart';
import 'package:tamago_store/utils/constants/colors.dart';

class MyOutlineButtonTheme {
  MyOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyColors.dark,
      side: const BorderSide(
        color: Colors.blue
      ),
      textStyle: const TextStyle(
          fontSize: 16,
          color: MyColors.dark,
          fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(
        color: Colors.blueAccent
      ),
      textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}