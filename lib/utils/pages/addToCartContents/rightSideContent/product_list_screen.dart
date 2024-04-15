import 'package:flutter/material.dart';
import 'package:home_services/utils/models/product.dart';

import 'product_list_item.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<CartProduct> products = [
    CartProduct(id: 'homeservicekitchen001', name: 'Move-in kitchen cleaning', price: 899, quantity: 6),
    CartProduct(id: 'homeservicekitchen002', name: 'Complete kitchen cleaning', price: 1999, quantity: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductListItem(product: products[index]);
      },
    );
  }
}
