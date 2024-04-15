import 'package:flutter/material.dart'
;
class CartItemIndicator extends StatelessWidget {
  final int itemCount;

  const CartItemIndicator({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        // color: Colors.red,
        shape: BoxShape.circle,
        
      ),
      // child: Text(
      //   itemCount.toString(),
      //   style: const TextStyle(
      //     color: Colors.white,
      //     fontSize: 12,
      //   ),
      // ),
    );
  }
}