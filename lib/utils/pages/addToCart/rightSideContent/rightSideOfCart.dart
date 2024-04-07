import 'package:flutter/material.dart';
import 'package:home_services/utils/pages/addToCart/rightSideContent/listOfCart.dart';
import 'package:home_services/utils/pages/addToCart/rightSideContent/paymentSummaru.dart';

class RightPartOfCart extends StatefulWidget {
  const RightPartOfCart({super.key});
  

  @override
  State<RightPartOfCart> createState() => _RightPartOfCartState();
}

class _RightPartOfCartState extends State<RightPartOfCart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            children: [
              listOfCart(),
              SizedBox(height: 30,),
              totalPayment(),
            ],
          ),
        ),
      ),
    );
  }

  IntrinsicHeight totalPayment() {
    return IntrinsicHeight(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: PaymentSummary(),
              ),
            );
  }

}
