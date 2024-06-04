import 'package:flutter/material.dart';
import 'package:tamago_store/utils/constants/colors.dart';

class MyChipTheme{
  MyChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: MyColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: MyColors.black),
    selectedColor: MyColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MyColors.white,
  );
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: MyColors.darkGrey,
    labelStyle: TextStyle(color: MyColors.white),
    selectedColor: MyColors.primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MyColors.white,
  );
}