import 'package:biology_fun/app/shared/theme/font.dart';
import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeData = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      elevation: 0,
      textStyle: buttonLinkMBold.copyWith(
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: placeholder.copyWith(color: greyColor),
    border: InputBorder.none,
    outlineBorder: const BorderSide(
      color: greyColor,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: greyColor,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: greyColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: greyColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: redColor,
      ),
    ),
  ),
  scaffoldBackgroundColor: backgroundColor,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      textStyle: buttonLinkMBold.copyWith(
        color: secondaryColor,
      ),
      elevation: 0,
      side: const BorderSide(
        color: primaryColor,
        width: 1,
        style: BorderStyle.solid,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  ),
);
List<BoxShadow> cardShadow = [
  const BoxShadow(
    spreadRadius: -4,
    blurRadius: 12,
    color: Color.fromRGBO(184, 184, 210, 0.2),
    offset: Offset(0, 8),
  )
];
