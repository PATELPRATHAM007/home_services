import 'package:flutter/material.dart';
import 'package:home_services/utils/home_page.dart';
import 'package:home_services/utils/service_page.dart';

class PageHendler extends StatelessWidget {
  const PageHendler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, fontFamily: "GoogleProductSans"),
      home: const ServicesPage()
    );
  }
}