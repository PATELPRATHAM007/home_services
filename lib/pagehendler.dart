import 'package:flutter/material.dart';
import 'package:home_services/home_page.dart';
import 'package:home_services/login_Page.dart';
import 'package:home_services/signUp_page.dart';

class PageHendler extends StatelessWidget {
  const PageHendler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, fontFamily: "GoogleProductSans"),
      home: const THomePage()
    );
  }
}