import 'package:flutter/material.dart';
import 'package:home_services/constants/size_values.dart';
class CTextStyle {
  // Company name Style
  static TextStyle companyTextStyle({
    required Color color,
    required double textSize,
    required FontWeight textWeigth}){
    return TextStyle(
      color: color,
      fontSize: textSize,
      fontWeight: textWeigth,
      letterSpacing: TSizeValues.companyLetterSpacing,
      height: 1,
    );
  }
}
