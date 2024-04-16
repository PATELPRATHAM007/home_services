import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoComponents/logo.dart';
import 'package:home_services/commonFIles/navComponents/navLinks.dart';
import 'package:home_services/commonFIles/navComponents/navSeachbar.dart';
import 'package:home_services/commonFIles/navComponents/navcart.dart';
import 'package:home_services/commonFIles/navComponents/navloginButton.dart';
import 'package:home_services/commonFIles/navComponents/userIcon.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';

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
            const CNavSearchBar(),
             Row(
              children: [
                NavlinksSection(),
                // CnavCart(),
              signinOrNOt == true ? CUserIcon() : NavLoginButton() 

                // NavLoginButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
