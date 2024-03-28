import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/utils/loginPageContent/02.1_rightContainer.dart';
import 'package:home_services/utils/loginPageContent/02.2_leftContainer.dart';

Widget mainContainer({required BuildContext context}) {
  return IntrinsicHeight(
    child: Container(
      clipBehavior: Clip.antiAlias,
      width: TSizeValues.mianContWidth,
      decoration: BoxDecoration(
          color: TColors.white,
          borderRadius: BorderRadius.circular(TSizeValues.mianContRadious),
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              color: Color.fromARGB(255, 196, 196, 196),
              offset: Offset(0, 0),
              // spreadRadius: 5
            )
          ]),
      child: const Row(
        children: [
          TLoginLeftSideContainer(),
          TLoginRightSideContainer(),
        ],
      ),  
    ),
  );
}