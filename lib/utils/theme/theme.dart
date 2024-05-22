import 'package:flutter/material.dart';
import 'package:tamago_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:tamago_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:tamago_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:tamago_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:tamago_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:tamago_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:tamago_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:tamago_store/utils/theme/custom_themes/text_theme.dart';

class MyAppTheme{
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButton,
    outlinedButtonTheme: MyOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: MyTextFormFiledTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: MyTextTheme.darkTextTheme,
      chipTheme: MyChipTheme.darkChipTheme,
      appBarTheme: MyAppBarTheme.darkAppBarTheme,
      checkboxTheme: MyCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButton,
      outlinedButtonTheme: MyOutlineButtonTheme.darkOutlineButtonTheme,
      inputDecorationTheme: MyTextFormFiledTheme.darkInputDecorationTheme,
  );
}