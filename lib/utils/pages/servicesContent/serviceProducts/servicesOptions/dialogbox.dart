import 'package:flutter/material.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/productRow.dart';


class ProductSelectionDialog extends StatelessWidget {
  final Function(String) onProductSelected;

  const ProductSelectionDialog({Key? key, required this.onProductSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select a product'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            buildProductRow(context, 'Product 1', '\$10', '4.5', onProductSelected),
            buildProductRow(context, 'Product 2', '\$15', '4.0', onProductSelected),
            buildProductRow(context, 'Product 3', '\$20', '4.2', onProductSelected),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Close the dialog
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
