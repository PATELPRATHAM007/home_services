import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/constants/text_strings.dart';


class TLoginRightSideContainer extends StatelessWidget {
  const TLoginRightSideContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: TSizeValues.subContWidth2,
      height: TSizeValues.subContheight2,
      color: const Color.fromARGB(255, 50, 88, 220),
      child: contents(context),
    );
  }

  Column contents(BuildContext context) {
    return Column(
      children: [
        //space
        const SizedBox(height: 120),
        //hii there
        Text(TTextStrings.hiiThere,
            style: TextStyle(color: TColors.white, fontSize: 50)),
        // space
        const SizedBox(height: 20),
        //enter details
        Text(TTextStrings.enterDetails,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: TColors.white)),
        //space
        const SizedBox(height: 20),
        //signup button
        signupButton(context),
      ],
    );
  }

  Padding signupButton(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: SizedBox(
          height: 42,
          width: 250,
          child: ElevatedButton(
            onPressed: () =>  context.go('/signup'),
            style: ElevatedButton.styleFrom(backgroundColor: TColors.white),
            child: Text(
              TTextStrings.signUp,
              style: TextStyle(
                  color: TColors.blue,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2),
            ),
          ),
        ),
      );
  }
}
