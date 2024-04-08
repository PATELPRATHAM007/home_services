import 'package:flutter/material.dart'
;
class CartItemIndicator extends StatelessWidget {
  final int itemCount;

  CartItemIndicator({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        
      ),
      child: Text(
        itemCount.toString(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}