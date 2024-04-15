import 'package:flutter/material.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/utils/models/product.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/dialogbox.dart';
import 'package:home_services/utils/pages/servicesContent/productDetailsMaker.dart';

class BedroomCleaningServices extends StatefulWidget {
  const BedroomCleaningServices({Key? key}) : super(key: key);

  @override
  _BedroomCleaningServicesState createState() =>
      _BedroomCleaningServicesState();
}

class _BedroomCleaningServicesState extends State<BedroomCleaningServices> {
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
                      "Bedroom cleaning",
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
                      productId: "bedroom001",
                      sellerText: "Best Seller",
                      cleaningText: "Standard Bedroom Cleaning",
                      reviewsText: "4.5 (50 reviews)",
                      priceText: "Start at ${TTextStrings.idianRupee} 699",
                      dataList: [
                        "Dust and wipe all surfaces",
                        "Vacuum and mop the floor",
                        "Change bed linen (if provided)"
                      ],
                      onPressed: () {
                        addToCart(productName: "Standard Bedroom Cleaning", productId: "bedroom001", productPrice: 699);
                      },
                      image: "",
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
                      productId: "bedroom002",
                      sellerText: "Best Seller",
                      cleaningText: "Deep Bedroom Cleaning",
                      reviewsText: "4.8 (70 reviews)",
                      priceText: "Start at ${TTextStrings.idianRupee} 999",
                      dataList: [
                        "Dust and wipe all surfaces",
                        "Vacuum and mop the floor",
                        "Clean inside wardrobes and drawers",
                        "Clean windows and mirrors"
                      ],
                      onPressed: () {
                        addToCart(productName: "Deep Bedroom Cleaning", productId: "bedroom002", productPrice: 999);
                      },
                      image: "",
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
