import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';

class listOfCart extends StatefulWidget {
  const listOfCart({Key? key}) : super(key: key);

  @override
  State<listOfCart> createState() => _listOfCartState();
}

class _listOfCartState extends State<listOfCart> {
  double subtotal = 0.0;
  double discount = 0.0;
  double tax = 0.0;
  double gst = 0.0;

  @override
  void initState() {
    super.initState();
    calculateTotalPrice();
  }

  void calculateTotalPrice() {
    subtotal = 0.0;
    for (var item in cartList) {
      subtotal += item.price * item.quantity;
    }

    // Apply discount
    discount = subtotal * 0.10;

    // Calculate tax (10% of subtotal without discount)
    tax = (subtotal - discount) * 0.10;

    // Calculate GST (5% of subtotal without discount and tax)
    gst = (subtotal - discount - tax) * 0.05;
  }

  @override
  Widget build(BuildContext context) {
    return cartList.isEmpty
        ? Center(
            child: Text(
              'No items in the cart',
              style: TextStyle(fontSize: 18),
            ),
          )
        : SizedBox(
            child: SingleChildScrollView(
              child: IntrinsicHeight(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int index = 0; index < cartList.length; index++)
                          Container(
                            height: 110,
                            width: double.infinity,
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            cartList[index].name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "Price ${cartList[index].price}",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey[350]!,
                                            offset: const Offset(0, 0),
                                            blurRadius: 5,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            icon: Icon(Icons.remove),
                                            onPressed: () {
                                              setState(() {
                                                if (cartList[index].quantity >
                                                    1) {
                                                  cartList[index].quantity--;
                                                } else {
                                                  cartList.removeAt(index);
                                                }
                                                calculateTotalPrice();
                                              });
                                            },
                                          ),
                                          Text('${cartList[index].quantity}'),
                                          IconButton(
                                            icon: Icon(Icons.add),
                                            onPressed: () {
                                              setState(() {
                                                cartList[index].quantity++;
                                                calculateTotalPrice();
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Payment summary"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Subtotal",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "${formatAmount(subtotal)}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Discount (10%)",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "${formatAmount(discount)}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tax (10%)",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "${formatAmount(tax)}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "GST (5%)",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "${formatAmount(gst)}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "${formatAmount(subtotal - discount + tax + gst)}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                width: double.infinity,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Approach 1: Show SnackBar
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Booking Successful'),
                                      ),
                                    );

                                    // Navigate to home page after a delay
                                    Future.delayed(Duration(seconds: 2), () {
                                      context.go('/');
                                    });

                                    // Approach 2: Navigate to a new page
                                    // Navigator.pushReplacement(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => BookingSuccessPage(),
                                    //   ),
                                    // );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                  ),
                                  child: Text(
                                    'Proceed',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }

  String formatAmount(double amount) {
    return amount < 0
        ? "-₹${amount.abs().toStringAsFixed(2)}"
        : "₹${amount.toStringAsFixed(2)}";
  }
}

class BookingSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Successful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 50),
            SizedBox(height: 20),
            Text(
              'Booking Successful',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
