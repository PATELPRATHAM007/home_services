import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_services/utils/localData/mostlyBookingService.dart';

class TMostlyBookingServiceData {
  Widget mostlyBookingService(
      {required PageController pageController, required int currentPageIndex}) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          mostlyBookCardBuilder(pageController),
          mostlyBookLeftarrow(currentPageIndex, pageController),
          mostlyBookRightarrow(currentPageIndex, pageController)
        ],
      ),
    );
  }

  Positioned mostlyBookLeftarrow(
      int currentPageIndex, PageController pageController) {
    return Positioned(
      top: 100,
      right: 0,
      child: IconButton(
        icon: const Icon(Icons.arrow_forward),
        color: Colors.pink,
        onPressed: () {
          currentPageIndex--;
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  Positioned mostlyBookRightarrow(
      int currentPageIndex, PageController pageController) {
    return Positioned(
      top: 100,
      right: 0,
      child: IconButton(
        icon: const Icon(Icons.arrow_forward),
        color: Colors.pink,
        onPressed: () {
          currentPageIndex--;
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  ListView mostlyBookCardBuilder(PageController pageController) {
    return ListView.builder(
  controller: pageController,
  scrollDirection: Axis.horizontal,
  itemCount: mostlyBookingServicesDate.length,
  itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {
          // Handle tap event here, e.g., navigate to a detail screen
          print('Tapped on ${mostlyBookingServicesDate[index].service}');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 280,
                height: 250,
                child: Card(
                  elevation: 1,
                  child: Image.asset(
                    mostlyBookingServicesDate[index].image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mostlyBookingServicesDate[index].service,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 4),
                      Text("${mostlyBookingServicesDate[index].rating} (${mostlyBookingServicesDate[index].review})"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.monetization_on_outlined),
                      SizedBox(width: 4),
                      Text("\$${mostlyBookingServicesDate[index].price}"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  },
)

;
  }
}
