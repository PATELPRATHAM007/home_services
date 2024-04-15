import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/bathroomCleaningService.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/bedroomCleaningService.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/carpetCleaningService.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/kitchenCleaningServices.dart';
import 'package:home_services/utils/pages/servicesContent/productDetailsMaker.dart';

class ListOfServices extends StatefulWidget {
  const ListOfServices({Key? key}) : super(key: key);

  @override
  State<ListOfServices> createState() => _ListOfServicesState();
}

class _ListOfServicesState extends State<ListOfServices> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 6,
      child: SingleChildScrollView(
        child: Column(
          children: [
            KitchenCleaningServices(),
            SizedBox(height: 5,),
            BedroomCleaningServices(),
            SizedBox(height: 5,),
            CarpetCleaningServices(),
            SizedBox(height: 5,),
            BathroomCleaningServices(),
          ],
        ),
      ),
    );
  }
}
