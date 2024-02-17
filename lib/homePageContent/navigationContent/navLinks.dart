import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/text_strings.dart';

class NavlinksSection extends StatefulWidget {
  const NavlinksSection({super.key});

  @override
  State<NavlinksSection> createState() => _NavlinksSectionState();
}

class _NavlinksSectionState extends State<NavlinksSection> {
  
  final List<String> navbarString = [
    TTextStrings.home,
    TTextStrings.services,
    TTextStrings.aboutUs,
    TTextStrings.contactUS,
  ];

  int ? selectedButtonIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(navbarString.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(14),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: index == selectedButtonIndex ? TColors.blue : TColors.transparent,
            ),
            onPressed: () {
              setState(() {
                selectedButtonIndex = index;
              });
            },
            child: Text(
              navbarString[index],
              style: TextStyle(
                fontSize: 14,
                color: index == selectedButtonIndex ? TColors.white : TColors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        );
      }),
    );
  }
}
