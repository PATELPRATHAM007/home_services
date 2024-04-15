import 'package:home_services/utils/localData/servicesData/subserviceData.dart/cleaningServiceVariations/ServiceVariations.dart';
import 'package:home_services/utils/localData/servicesData/subserviceData.dart/xyz.dart';
import 'package:home_services/utils/models/servicesModel/subServicesModel.dart';

// Sub-services for cleaning
final List<SubService> cleaningSubServices = [

  SubService(
    name: 'Bathroom Cleaning',
    variations: bathroomVariations,
    superSaverDeal: bathroomSubServiceItems,
    rating: 4.3,
    numOfReviews: 80,
    serviceId: 'bathroom_cleaning',
    imageUrl: "assets/images/bathroomCleaningMan.jpg"
  ),
  SubService(
    name: 'Bedroom Cleaning',
    variations: bedroomVariations,
    superSaverDeal: bathroomSubServiceItems,
    rating: 4.5,
    numOfReviews: 100,
    serviceId: 'bedroom_cleaning',
    imageUrl: "assets/images/bedRoom.webp"
  ),
  SubService(
    name: 'Carpet Cleaning',
    variations: carpetVariations,
    superSaverDeal: bathroomSubServiceItems,
    rating: 4.7,
    numOfReviews: 150,
    serviceId: 'carpet_cleaning',
    imageUrl: "assets/images/carpet.jpeg"
  
  ),
  SubService(
    name: 'Kitchen Cleaning',
    variations: kitchenVariations,
     superSaverDeal: bathroomSubServiceItems,
    rating: 4.4,
    numOfReviews: 90,
    serviceId: 'kitchen_cleaning',
    imageUrl: "assets/images/kitchenCleaningwoman.jpg"
  ),

  SubService(
    name: 'temp Cleaning',
    variations: kitchenVariations,
     superSaverDeal: bathroomSubServiceItems,
    rating: 4.4,
    numOfReviews: 90,
    serviceId: 'kitchen_cleaning',
    imageUrl: "assets/images/kitchenCleaningwoman.jpg"
  ),
];