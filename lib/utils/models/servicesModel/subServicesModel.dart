import 'package:home_services/utils/models/servicesModel/SubServiceVariation.dart';
import 'package:home_services/utils/models/servicesModel/subServiceTitleModel.dart';


class SubService {
  final String name;
  final List<SubServiceVariation>? variations;
  final double? price;
  final double? rating;
  final int? numOfReviews;
  final String? imageUrl;
  final String serviceId;
  final List<SubServiceTitle>? superSaverDeal; // Add property of type SuperSaverDeal

  SubService({
    required this.name,
    this.variations,
    this.price,
    this.rating,
    this.numOfReviews,
    this.imageUrl,
    required this.serviceId,
    this.superSaverDeal, // Initialize the SuperSaverDeal property
  });
}
