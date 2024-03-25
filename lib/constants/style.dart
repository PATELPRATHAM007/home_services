import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';

class TStyle {
  // Company name Style
  static TextStyle companyTextStyle({required Color color}) {
    return TextStyle(
      color: color,
      fontSize: TSizeValues.companyTextSize,
      fontWeight: TSizeValues.companyFontWeight,
      letterSpacing: TSizeValues.companyLetterSpacing,
      height: 1,
    );
  }

  static TextStyle superFontStyle({
    Color? color,
    double? fontsize,
    FontWeight? fontWeight,
    double? letterSpace,
    double? height,
    double? wordSpacing,
  }) {
    return TextStyle(
        color: color ?? TColors.white,
        fontSize: fontsize ?? TSizeValues.superFont,
        fontWeight: fontWeight ?? FontWeight.bold,
        letterSpacing: letterSpace ?? 7,
        height: height,
        wordSpacing: wordSpacing);
  }

  TextStyle smallFontStyle({
    Color? color,
    double? height,
    double? letterSpace,
    double? wordSpacing,
    double? fontSize,
    FontWeight? fontWeight,

  }) {
    return TextStyle(
      color: color ?? TColors.white,
      fontSize: fontSize ?? TSizeValues.smallFont,
      height: height,
      letterSpacing: letterSpace,
      wordSpacing: wordSpacing,
      fontWeight: fontWeight
    );
  }

    static TextStyle smallProFontStyle({
    Color? color,
    double? fontsize,
    FontWeight? fontWeight,
    double? letterSpace,
    double? height,
    double? wordSpacing,
  }) {
    return TextStyle(
        color: color ?? TColors.white,
        fontSize: fontsize ?? TSizeValues.smallProFont,
        fontWeight: fontWeight ?? FontWeight.w400,
        letterSpacing: letterSpace,
        height: height,
        wordSpacing: wordSpacing);
  }

  TextStyle midFontStyle({
    Color? color,
    double? height,
    double? letterSpace,
    double? wordSpacing,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      color: color ?? TColors.white,
      fontSize: TSizeValues.midFont,
      height: height,
      letterSpacing: letterSpace,
      wordSpacing: wordSpacing,
      fontWeight: fontWeight
    );
  }

  TextStyle largeFontStyle({
    Color? color,
    double? height,
    double? letterSpace,
    double? wordSpacing,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      color: color ?? TColors.white,
      fontSize: TSizeValues.largeFont,
      height: height,
      letterSpacing: letterSpace,
      wordSpacing: wordSpacing,
      fontWeight: fontWeight
    );
  }

  TextStyle extraLargeFontStyle({
    Color? color,
    double? height,
    double? letterSpace,
    double? wordSpacing,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      color: color ?? TColors.white,
      fontSize: TSizeValues.extraLargeFont,
      height: height,
      letterSpacing: letterSpace,
      wordSpacing: wordSpacing,
      fontWeight: fontWeight
    );
  }

  TextStyle extraLargeProFontStyle({
    Color? color,
    double? height,
    double? letterSpace,
    double? wordSpacing,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
      color: color ?? TColors.white,
      fontSize: TSizeValues.extraLargeProFont,
      height: height,
      letterSpacing: letterSpace,
      wordSpacing: wordSpacing,
      fontWeight: fontWeight,
    );
  }

}
