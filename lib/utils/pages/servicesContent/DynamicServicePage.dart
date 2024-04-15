import "package:flutter/material.dart";
import "package:home_services/commonFIles/navComponents/navigationBar.dart";
import "package:home_services/utils/pages/servicesContent/boxOfAddToCart.dart";
import "package:home_services/utils/pages/servicesContent/listOfServices.dart";
import "package:home_services/utils/pages/servicesContent/subService.dart";

class TServicePage extends StatefulWidget {
  const TServicePage({super.key});

  @override
  State<TServicePage> createState() => _TServicePageState();
}

class _TServicePageState extends State<TServicePage> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ServicePageBody(screenSize);
  }

  Scaffold ServicePageBody(Size screenSize) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 75),
          child: const TNavigationBar()),
      body: bodyContents(),
    );
  }

  Padding bodyContents() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 170, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //sub service and title of the service
          SubSerives(),
          //space
          SizedBox(width: 20),
          //vertical Divieder
          VerticalDivider(thickness: 1.3),
          //listOfitem
          ListOfServices(),
          //vertical Divieder
          VerticalDivider(thickness: 1.3),
          //add to cart
          // BoxOfaddToCart(),
        ],
      ),
    );
  }
}
