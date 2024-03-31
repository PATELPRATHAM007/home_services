import 'package:flutter/material.dart';
import 'package:home_services/utils/pages/loginPageContent/01_mainContainer.dart';

class TLoginPage extends StatelessWidget {
  const TLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: loginPageBody(context));
  }

  Center loginPageBody(BuildContext context) {
    return Center(
      child: mainContainer(context: context),
    );
  }
}
