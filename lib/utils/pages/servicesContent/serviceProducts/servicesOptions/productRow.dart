import 'package:flutter/material.dart';

Widget buildProductRow(BuildContext context, String name, String price, String rating, Function(String) onProductSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Price: $price',
              ),
              Text(
                'Rating: $rating',
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            onProductSelected(name);
            // Navigator.pop(context);
          },
          child: Text('Add to Cart'),
        ),
      ],
    ),
  );
}
