import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/commonFIles/navComponents/cartItemIndicator.dart';

class CnavCart extends StatefulWidget {
  const CnavCart({super.key});

  @override
  State<CnavCart> createState() => _CnavCartState();
}

class _CnavCartState extends State<CnavCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 40),
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart,size: 32,),
            onPressed: () =>  context.go('/cart'),
          ),
          const CartItemIndicator(itemCount: 3), // Change itemCount as per your requirement
        ],
      ),
    );
  }
}