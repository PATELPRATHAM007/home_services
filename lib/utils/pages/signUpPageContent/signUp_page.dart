import 'package:flutter/material.dart';
import 'package:home_services/utils/pages/signUpPageContent/01_mainConainerSignUp.dart';

class TSignUpPage extends StatelessWidget {
  const TSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: signUpPageBody(context),
    );
  }

  Center signUpPageBody(BuildContext context) {
    return Center(
      child: mainContainerSignUp(context: context),
    );
  }
  
  }
