import 'package:flutter/material.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class MyTextFormFiledTheme {
  MyTextFormFiledTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MyColors.darkGrey,
    suffixIconColor: MyColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeMd, color: MyColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeSm,color: MyColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: MyColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.warning),
    ),
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MyColors.darkGrey,
    suffixIconColor: MyColors.darkGrey,
    labelStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeMd, color: MyColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: MySizes.fontSizeMd,color: MyColors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: MyColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MySizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyColors.warning),
    ),
  );
}