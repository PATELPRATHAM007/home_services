// import 'package:flutter/material.dart';
// import 'package:home_services/utils/models/product.dart';
// import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';

// class PaymentSummary extends StatefulWidget {
//   const PaymentSummary({Key? key});

//   @override
//   State<PaymentSummary> createState() => _PaymentSummaryState();
// }

// class _PaymentSummaryState extends State<PaymentSummary> {
//   var allitInCartList = cartList;

//   double calculateTotalPrice(List<CartProduct> cartList) {
//     double totalPrice = 0.0;
//     for (var item in cartList) {
//       totalPrice += item.quantity * item.price;
//     }
//     return totalPrice;
//   }

//   @override
//   Widget build(BuildContext context) {
//     double totalPrice = calculateTotalPrice(allitInCartList);

//     return Padding(
//       padding: EdgeInsets.all(20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("Payment summary"),
//           ltemTotal(),
//           itemDiscount(),
//           itemTextAndFees(),
//           expressFee(),
//           const Divider(),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Total",
//                 style: TextStyle(fontSize: 20),
//               ),
//               Text(
//                 "₹$totalPrice",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//           Divider(),
//           tipSection(),
//         ],
//       ),
//     );
//   }

//   Column tipSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text("Add a tip to thank the Professional"),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               width: 80,
//               height: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 border: Border.all(
//                   color: Colors.grey[400]!,
//                   width: 1,
//                 ),
//               ),
//               child: Center(child: Text("50")),
//             ),
//             Container(
//               width: 80,
//               height: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 border: Border.all(
//                   color: Colors.grey[400]!,
//                   width: 1,
//                 ),
//               ),
//               child: Center(child: Text("50")),
//             ),
//             Container(
//               width: 80,
//               height: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 border: Border.all(
//                   color: Colors.grey[400]!,
//                   width: 1,
//                 ),
//               ),
//               child: Center(child: Text("50")),
//             ),
//           ],
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Text("100% of the tip goes to the professional.")
//       ],
//     );
//   }

//   Row expressFee() {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Express Fee',
//           style: TextStyle(fontSize: 20),
//         ),
//         Text(
//           "₹1,348",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }

//   Row itemTextAndFees() {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Taxes and Fee',
//           style: TextStyle(fontSize: 20),
//         ),
//         Text(
//           "₹1,348",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }

//   Row itemDiscount() {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Item discount',
//           style: TextStyle(fontSize: 20),
//         ),
//         Text(
//           "₹1,348",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }

//   Row ltemTotal() {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Item total',
//           style: TextStyle(fontSize: 20),
//         ),
//         Text(
//           '₹1,348',
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }
