import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart'; // Import the uuid package

class ProductDetail extends StatefulWidget {
  final String productId; // Add productId field
  final String sellerText;
  final String cleaningText;
  final String reviewsText;
  final String priceText;
  final List<String> dataList;
  final Function onPressed;
  final String image;

  ProductDetail({
    String? productId, // Modify the constructor to accept an optional productId
    required this.sellerText,
    required this.cleaningText,
    required this.reviewsText,
    required this.priceText,
    required this.dataList,
    required this.onPressed,
    required this.image,
  }) : productId = productId ?? Uuid().v4(); // Generate a UUID if productId is not provided

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                widget.sellerText.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.green,
                ),
              ),
              Text(
                widget.cleaningText,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.3,
                ),
              ),
              Text(
                widget.reviewsText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                widget.priceText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(),
              SizedBox(
                height: 8,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(widget.dataList.length, (index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("- "),
                      Container(
                        width: 360,
                        child: Text(
                          "${widget.dataList[index]}",
                          style:
                              TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              SizedBox(height: 5.0),
              TextButton(
                onPressed: widget.onPressed as void Function()?,
                child: Text(
                  'View Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                width: 120,
                height: 120,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(widget.image),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 120,
                height: 40,
                child: FloatingActionButton(
                  onPressed: widget.onPressed as void Function()?,
                  elevation: 2.0,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
