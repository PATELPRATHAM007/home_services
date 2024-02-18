import "package:flutter/material.dart";

import "package:home_services/constants/image_strings.dart";
import "package:home_services/constants/size_values.dart";
import "package:home_services/constants/text_strings.dart";

// ignore: must_be_immutable
class CLogoSection extends StatelessWidget {
  CLogoSection(
      {super.key,
      required this.logoWidth,
      required this.logoHeight,
      required this.gap,
      required this.textStyle});

  double logoWidth;
  double logoHeight;
  double gap;
  TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          TImageStrings.logo,
          width: logoWidth,
          height: logoWidth,
        ),
        const SizedBox(
          width: TSizeValues.logoGap,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TTextStrings.house,
              style: textStyle,
            ),
            Text(
              TTextStrings.hustler,
              style: textStyle,
            )
          ],
        ),
      ],
    );
  }
}
