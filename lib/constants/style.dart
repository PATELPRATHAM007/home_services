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

  static TextStyle superFontStyle({Color ? color ,double ? fontsize,FontWeight ? fontWeight,double ? letterSpace,double ? height, double ? wordSpacing,}) {
    return TextStyle(
      color: color ?? TColors.white,
      fontSize: fontsize ?? TSizeValues.superFont,
      fontWeight: fontWeight ?? FontWeight.bold,
      letterSpacing: letterSpace ?? 7,
      height: height ,
      wordSpacing: wordSpacing
    );
  }
  static TextStyle smallProFontStyle({Color ? color ,double ? fontsize,FontWeight ? fontWeight,double ? letterSpace,double ? height, double ? wordSpacing,}) {
    return TextStyle(
      color: color ?? TColors.white,
      fontSize: fontsize ?? TSizeValues.smallProFont,
      fontWeight: fontWeight ?? FontWeight.w400,
      letterSpacing: letterSpace,
      height: height ,
      wordSpacing: wordSpacing
    );
  }

}
