import 'package:uuid/uuid.dart';

class TCardViewProperties {
  final String id;
  final String image; 
  final String ? innerTitle;
  final double ? price;
  final double  ? rating;
  final String  ? service;
  final String  ? review;

  TCardViewProperties({
    required this.image,
    this.innerTitle,
    this.price,
    this.rating,
    this.service,
    this.review,
  }) : id = const Uuid().v4();
}