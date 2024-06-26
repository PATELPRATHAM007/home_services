import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/navComponents/navigationBar.dart';
import 'package:home_services/utils/pages/addToCartContents/leftSidecontent/leftSideOfcart.dart';
import 'package:home_services/utils/pages/addToCartContents/rightSideContent/rightSideOfCart.dart';


class TAddToCart extends StatefulWidget {
  const TAddToCart({super.key});

  @override
  State<TAddToCart> createState() => _TAddToCartState();
}

class _TAddToCartState extends State<TAddToCart> {
  @override
  
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screensize.width, 75),
          child: const TNavigationBar()),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: screensize.width,
        height: screensize.height,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First scrollable column
            LeftSideOfcart(),
            //divider
            VerticalDivider(),
            // Second scrollable column
            RightPartOfCart(),
          ],
        ),
      ),
    );
  }

  
 
}
