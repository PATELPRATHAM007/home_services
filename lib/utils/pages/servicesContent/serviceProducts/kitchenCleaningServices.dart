import 'package:flutter/material.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/utils/models/product.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/dialogbox.dart';
import 'package:home_services/utils/pages/servicesContent/productDetailsMaker.dart';



class KitchenCleaningServices extends StatefulWidget {
  const KitchenCleaningServices({Key? key}) : super(key: key);

  @override
  _KitchenCleaningServicesState createState() =>
      _KitchenCleaningServicesState();
}

class _KitchenCleaningServicesState extends State<KitchenCleaningServices> {
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
                      "Kitchen cleaning",
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
                      productId: "homeservicekitchen001",
                      sellerText: "Best Seller",
                      cleaningText: "Move-in kitchen cleaning",
                      reviewsText: "4.6 (100 reviews)",
                      priceText: "Start at ${TTextStrings.idianRupee} 899",
                      dataList: [
                        "cabinets cleaned inside, removal & placing back items included",
                        "oil and grease stain removal from walls, slabs, cabinets, stove, sink etc",
                      ],
                      onPressed: () {
                        addToCart(productName: "Move-in kitchen cleaning", productId: "homeservicekitchen001",productPrice: 899);
                      },
                      image: "assets/images/kitchenCleaningwoman.jpg",
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
                      productId: "homeservicekitchen002",
                      sellerText: "Best Seller",
                      cleaningText: "Complete kitchen cleaning",
                      reviewsText: "4.7 (100 reviews)",
                      priceText: "Start at ${TTextStrings.idianRupee} 1999",
                      dataList: [
                        "Stain removal of kitchen tiles, slab, sink, floor, exhaust, window, fan, etc.",
                        "Includes removing and placing back of utensils"
                      ],
                      onPressed: () {
                        
                        addToCart(productName: "Complete kitchen cleaning",productId:  "homeservicekitchen002", productPrice: 1999);
                      },
                      image: "assets/images/kitchenCleaningwoman.jpg",
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
