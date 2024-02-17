import 'package:flutter/material.dart';
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
}
