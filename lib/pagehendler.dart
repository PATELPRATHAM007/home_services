import 'package:flutter/material.dart';
import 'package:home_services/addToCart.dart';
// import 'package:home_services/utils/fsfsfsfasfafasf.dart';
import 'package:home_services/utils/home_page.dart';
import 'package:home_services/utils/login_Page.dart';
import 'package:home_services/utils/service_page.dart';
import 'package:home_services/utils/servicesContent/tempServicePage.dart';
import 'package:home_services/utils/signUp_page.dart';
import 'package:home_services/utils/temp.dart';

class PageHendler extends StatelessWidget {
  const PageHendler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, fontFamily: "GoogleProductSans"),
      home: TSignUpPage(),
    );
  }
}