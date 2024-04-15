import 'package:flutter/material.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/utils/models/product.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/dialogbox.dart';
import 'package:home_services/utils/pages/servicesContent/productDetailsMaker.dart';

class CarpetCleaningServices extends StatefulWidget {
  const CarpetCleaningServices({Key? key}) : super(key: key);

  @override
  _CarpetCleaningServicesState createState() =>
      _CarpetCleaningServicesState();
}

class _CarpetCleaningServicesState extends State<CarpetCleaningServices> {
  void addToCart(
      {required String productName,
      required String productId,
      required int productPrice}) {
    setState(() {
      // Check if the product already exists in the cart
      int index = cartList.indexWhere((product) => product.id == productId);
      if (index != -1) {
        // If the product already exists, increase its quantity
        cartList[index].quantity++;
      } else {
        // If the product doesn't exist, add it to the cart
        cartList.add(CartProduct(id: productId, name: productName, price: productPrice, quantity: 1));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[400]!),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Carpet cleaning",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextButton(
                      onPressed: () {
                        print(cartList);
                      }, // Call the showDialog function here
                      child: Text(
                        "Cleaning guide",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.grey[600]!,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ProductDetail(
                      productId: "carpet001",
                      sellerText: "Best Seller",
                      cleaningText: "Standard Carpet Cleaning",
                      reviewsText: "4.5 (50 reviews)",
                      priceText: "Start at ${TTextStrings.idianRupee} 499",
                      dataList: [
                        "Vacuuming the carpet",
                        "Spot cleaning for stains",
                        "Deodorizing the carpet"
                      ],
                      onPressed: () {
                        addToCart(productName: "Standard Carpet Cleaning", productId: "carpet001", productPrice: 499);
                      },
                      image: "assets/images/carpet.jpeg",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.grey[600]!,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ProductDetail(
                      productId: "carpet002",
                      sellerText: "Best Seller",
                      cleaningText: "Deep Carpet Cleaning",
                      reviewsText: "4.8 (70 reviews)",
                      priceText: "Start at ${TTextStrings.idianRupee} 899",
                      dataList: [
                        "Pre-treatment for tough stains",
                        "Hot water extraction method",
                        "Deodorizing and sanitizing the carpet"
                      ],
                      onPressed: () {
                        addToCart(productName: "Deep Carpet Cleaning", productId: "carpet002", productPrice: 899);
                      },
                      image: "assets/images/carpet.jpeg",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
