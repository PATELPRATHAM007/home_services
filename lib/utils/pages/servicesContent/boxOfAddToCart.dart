import 'package:flutter/material.dart';

class BoxOfaddToCart extends StatefulWidget {
  const BoxOfaddToCart({super.key});
  
  @override
  State<BoxOfaddToCart> createState() => _BoxOfaddToCartState();
}

class _BoxOfaddToCartState extends State<BoxOfaddToCart> {
   int itemCount = 1;

  void increaseItem() {
    setState(() {
      itemCount++;
    });
  }

  void decreaseItem() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 265,
              child: SingleChildScrollView(
                child: IntrinsicHeight(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey[400]!),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          6,
                          (index) {
                            return Container(
                              height: 80,
                              width: double.infinity,
                              child: Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: Image.asset(
                                          "assets/images/search.png",
                                          fit: BoxFit.cover,
                                        ), // Replace 'assets/your_image.png' with your image path
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Product Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Price: \$10.00',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text("view Cart")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
