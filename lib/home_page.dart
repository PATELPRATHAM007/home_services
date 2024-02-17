import "package:flutter/material.dart";
import 'package:home_services/homePageContent/bodysection.dart';
import 'package:home_services/homePageContent/navigationBar.dart';
import 'package:home_services/constants/size_values.dart';

class THomePage extends StatefulWidget {
  const THomePage({super.key});

  @override
  State<THomePage> createState() => _THomePageState();
}

class _THomePageState extends State<THomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(screenSize.width, TSizeValues.navBarHeight),
            child: const TNavigationBar()),
        body: const SingleChildScrollView(
          child: THomepageBodySection()
        ),
    );
  }
}
