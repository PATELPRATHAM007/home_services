// import 'package:flutter/material.dart';

// class ServicesPage extends StatefulWidget {
//   const ServicesPage({Key? key}) : super(key: key);

//   @override
//   State<ServicesPage> createState() => _ServicesPageState();
// }

// class _ServicesPageState extends State<ServicesPage> {
//   bool isScrollable = false;
//   final GlobalKey _firstContainerKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Row(
//       children: [
//         Expanded(
//           flex: 2,
//           child: Column(
//             children: [
//               Text("data"),
//               Text("data"),
//               Container(
//                 height: 500,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                 ),
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     mainAxisSpacing: 10,
//                     crossAxisSpacing: 10,
//                   ),
//                   itemBuilder: (context, index) {
//                     return Container(
//                       width: 100,
//                       height: 100,
//                       color: Colors.blue,
//                     );
//                   },
//                   itemCount: 7,
//                 ),
//               )
//             ],
//           ),
//         ),
//         Expanded(
//           flex: 5,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   key: _firstContainerKey,
//                   width: 900,
//                   height: 500,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.blue),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
                    
//                     SingleChildScrollView(
//                       physics: AlwaysScrollableScrollPhysics(),
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 900,
//                             width: 500,
//                             color: Colors.pink,
//                             child: ListView.builder(
//                               physics: NeverScrollableScrollPhysics(),
//                               itemCount: 20,
//                               itemBuilder: (context, index) {
//                                 return Column(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         width: 200,
//                                         height: 200,
//                                         color: Colors.blue,
//                                       ),
//                                     ),
//                                     SizedBox(height: 10,),
//                                   ],
//                                 );
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           width: 300,
//                           height: 400,
//                           color: Colors.blueGrey,
//                         )
//                       ],
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     ));
//   }
// }
