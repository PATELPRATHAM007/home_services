import 'package:flutter/material.dart';
import 'package:home_services/addToCart.dart';
import 'package:home_services/pageRouting/pageRoutingConfig.dart';
// import 'package:home_services/utils/fsfsfsfasfafasf.dart';
import 'package:home_services/utils/pages/homePageContent/home_page.dart';
import 'package:home_services/utils/pages/loginPageContent/login_Page.dart';
import 'package:home_services/utils/service_page.dart';
import 'package:home_services/utils/pages/servicesContent/tempServicePage.dart';
import 'package:home_services/utils/pages/signUpPageContent/signUp_page.dart';
import 'package:home_services/utils/temp.dart';

class PageHendler extends StatelessWidget {
  const PageHendler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(useMaterial3: true, fontFamily: "GoogleProductSans"),
      routerConfig: TPagerouting().router,
      // home: TSignUpPage(),
    );
  }
}