import 'package:uuid/uuid.dart';

class TCardViewProperties {
  final String id;
  final String image; 
  final String  innerTitle;
  final double ? price;
  final double  ? rating;
  final String  ? service;

  TCardViewProperties({
    required this.image,
    required this.innerTitle,
    this.price,
    this.rating,
    this.service,
  }) : id = const Uuid().v4();
}
