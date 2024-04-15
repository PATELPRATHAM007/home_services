import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/commonFIles/navComponents/cartItemIndicator.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';

class CnavCart extends StatefulWidget {
  const CnavCart({Key? key});

  @override
  State<CnavCart> createState() => _CnavCartState();
}

class _CnavCartState extends State<CnavCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 40),
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart, size: 32),
            onPressed: (){
            
              context.go('/cart');
            } 
          ),
          CartItemIndicator(itemCount: cartList.length), // Pass cartList.length as itemCount
        ],
      ),
    );
  }
}
