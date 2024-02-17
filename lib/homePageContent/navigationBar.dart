import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/homePageContent/navigationContent/cityDropDownButton.dart';
import 'package:home_services/homePageContent/navigationContent/navloginButton.dart';
import 'package:home_services/homePageContent/navigationContent/navLinks.dart';
import 'package:home_services/homePageContent/navigationContent/navLogosection.dart';
import 'package:home_services/homePageContent/navigationContent/navSeachBar.dart';

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
      child: const Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TSizeValues.navBarPaddingHorizontal,
            vertical: TSizeValues.navBarPaddingVertical),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                NavLogoSection(),
                SizedBox(
                  width: 20,
                ),
                CityDropDownButton(),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 400,
                  height: 35,
                  child: TNavSearchBar(),
                ),
               
              ],
            ),
            NavlinksSection(),
            NavLoginButton()
          ],
        ),
      ),
    );
  }
}
