import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/utils/signUpPageContent/02.1_leftConainerSignUp.dart';
import 'package:home_services/utils/signUpPageContent/02.2_rightContainerSignUp.dart';

Widget mainContainerSignUp({required BuildContext context}) {
  return IntrinsicHeight(
    child: Container(
      clipBehavior: Clip.antiAlias,
      width: 900,
      height: 550,
      decoration: BoxDecoration(
          color: TColors.white,
          borderRadius: BorderRadius.circular(90),
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
          TSignUpLeftSideContainer(),
          TSignUpRightSideContainer(),
        ],
      ),
    ),
  );
}