import 'package:flutter/material.dart';

class DealItem {
  final String pricePerBathroom;
  final String cleaningType;
  final String rating;
  final String price;
  final List<String> additionalItems;
  final String image;

  DealItem({
    required this.pricePerBathroom,
    required this.cleaningType,
    required this.rating,
    required this.price,
    required this.additionalItems,
    required this.image,
  });
}