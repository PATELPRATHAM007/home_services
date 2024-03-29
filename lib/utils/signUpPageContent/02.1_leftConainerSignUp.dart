import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/pageRouting/pageRouring.dart';


class TSignUpLeftSideContainer extends StatelessWidget {
  const TSignUpLeftSideContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900 * 0.45,
      height: 570,
      color: TColors.blue,
      child: contents(context),
    );
  }

  Column contents(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 120
        ),
        Text(
          "Welcome back!",
          style: TextStyle(color: TColors.white, fontSize: 50)
        ),
        const SizedBox(
          height: 20
        ),
        Text(
          "to keep connected with us \n please login with personal info",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: TColors.white)
        ),
        const SizedBox(
          height: 20
        ),
        signInButton(context),
      ],
    );
  }

  Padding signInButton(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: SizedBox(
          height: 42,
          width: 250,
          child: ElevatedButton(
            onPressed: () =>   context.go('/login'),
            style: ElevatedButton.styleFrom(backgroundColor: TColors.white),
            child: Text(
              'Login',
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