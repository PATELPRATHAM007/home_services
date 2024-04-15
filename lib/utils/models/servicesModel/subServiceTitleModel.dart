import 'package:home_services/utils/models/servicesModel/dealsItemModel.dart';

class SubServiceTitle {
  final String title;
  final String cleaningGuide;
  final List<DealItem> items;

  SubServiceTitle({
    required this.title,
    required this.cleaningGuide,
    required this.items,
  });
}