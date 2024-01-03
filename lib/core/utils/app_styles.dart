import 'package:flutter/material.dart';

import 'app_font.dart';

abstract class AppStyles {
  TextStyle _getTextStyle({
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
  }) =>
      TextStyle(
        color: color,
        fontFamily: AppFonts.kFontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
      );

  TextStyle getLightStyle({
    required Color color,
    double fontSize = AppFontSize.s12,
  }) =>
      _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: AppFontWeight.kLight,
      );

  TextStyle getRegularStyle({
    required Color color,
    double fontSize = AppFontSize.s12,
  }) =>
      _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: AppFontWeight.kRegular,
      );

  TextStyle getMediumStyle({
    required Color color,
    double fontSize = AppFontSize.s12,
  }) =>
      _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: AppFontWeight.kMedium,
      );

  TextStyle getSemiBoldStyle({
    required Color color,
    double fontSize = AppFontSize.s12,
  }) =>
      _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: AppFontWeight.kSemiBold,
      );

  TextStyle getBoldStyle({
    required Color color,
    double fontSize = AppFontSize.s12,
  }) =>
      _getTextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: AppFontWeight.kBold,
      );
}
