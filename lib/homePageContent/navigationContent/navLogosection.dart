import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/image_strings.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/constants/style.dart';
import 'package:home_services/constants/text_strings.dart';

class NavLogoSection extends StatelessWidget {
  const NavLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  TImageStrings.logo,
                  width: TSizeValues.logoWidth,
                  height: TSizeValues.logoHeight,
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
                      style: TStyle.companyTextStyle(color: TColors.blue),
                    ),
                    Text(
                      TTextStrings.hustler,
                      style: TStyle.companyTextStyle(color: TColors.black),
                    )
                  ],
                ),
              ],
            );
  }
}