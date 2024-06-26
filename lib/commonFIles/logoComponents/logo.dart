import "package:flutter/material.dart";
import "package:home_services/commonFIles/logoComponents/logoSectionStyle.dart";
import "package:home_services/constants/colors.dart";
import "package:home_services/constants/image_strings.dart";
import "package:home_services/constants/size_values.dart";
import "package:home_services/constants/text_strings.dart";

// ignore: must_be_immutable
class CLogoSection extends StatelessWidget {
  CLogoSection({
    super.key,
    required this.logoWidth,
    required this.logoHeight,
    required this.gap,
  });

  double logoWidth;
  double logoHeight;
  double gap;

  @override
  Widget build(BuildContext context) {
    TextStyle housetextStyle = CTextStyle.companyTextStyle(
        color: TColors.blue, textSize:  22,textWeigth: FontWeight.bold);
    TextStyle hustlertextStyle = CTextStyle.companyTextStyle(
        color: TColors.black, textSize:  22,textWeigth: FontWeight.bold);
    
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
              style: housetextStyle,
            ),
            Text(
              TTextStrings.hustler,
              style: hustlertextStyle,
            )
          ],
        ),
      ],
    );
  }
}

