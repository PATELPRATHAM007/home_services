import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoSection.dart';
import 'package:home_services/commonFIles/navLinks.dart';
import 'package:home_services/commonFIles/navloginButton.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';

class TNavigationBar extends StatefulWidget {
  const TNavigationBar({super.key});

  @override
  State<TNavigationBar> createState() => _TNavigationBarState();
}

class _TNavigationBarState extends State<TNavigationBar> {
  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: TColors.white,
      child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CLogoSection(
              logoWidth: TSizeValues.logoWidth,
              logoHeight: TSizeValues.logoHeight,
              gap: TSizeValues.logoGap,
            ),
            NavlinksSection(),
            NavLoginButton(),
          ],
        ),
      ),
    );
  }
}

class NavLogoSection {
  const NavLogoSection();
}
