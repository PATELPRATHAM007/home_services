import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';

class ServicesSection {
  Widget serviceType(
      {required double screenSizeheight,
      required double screenSizewidth,
      required PageController pageController,
      required int currentPageIndex}) {
    return SizedBox(
      height: screenSizeheight - 50,
      width: screenSizewidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textSection(),
          const SizedBox(height: 30),
          servicesCardSection(pageController, currentPageIndex),
        ],
      ),
    );
  }

  Widget spacialOffer(
      {required PageController pageController, required int currentPageIndex}) {
    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          spacialOfferListBuilder(pageController),
          spacialOfferLeftArrow(currentPageIndex, pageController),
          spacialOfferRightArrow(currentPageIndex, pageController),
        ],
      ),
    );
  }

  Widget newWorthfulService(
      {required PageController pageController, required int currentPageIndex}) {
    return SizedBox(
      height: 290,
      child: Stack(
        children: [
          newWorthfulCardBuilder(pageController),
          newWorthfulLeftArrow(currentPageIndex, pageController),
          newWorthfulRightArrow(currentPageIndex, pageController),
        ],
      ),
    );
  }

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

  Positioned mostlyBookLeftarrow(int currentPageIndex, PageController pageController) {
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

  Positioned mostlyBookRightarrow(int currentPageIndex, PageController pageController) {
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
          itemCount: 8,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 280,
                    height: 250,
                    child: Card(
                      // Your card content goes here
                      elevation: 1,
                      child: Center(
                        child: Text(
                          'Card $index',
                          style: const TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "data",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            SizedBox(width: 4),
                            Text("4.8 (47k reviews)"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.monetization_on_outlined),
                            SizedBox(width: 4),
                            Text("499"),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
  }

  Positioned newWorthfulLeftArrow(
      int currentPageIndex, PageController pageController) {
    return Positioned(
      top: 100,
      left: 0,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.pink,
        onPressed: () {
          currentPageIndex--;
          pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  Positioned newWorthfulRightArrow(
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

  ListView newWorthfulCardBuilder(PageController pageController) {
    return ListView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              SizedBox(
                width: 280,
                height: 250,
                child: Card(
                  // Your card content goes here
                  elevation: 1,
                  child: Center(
                    child: Text(
                      'Card $index',
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "data",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )
            ],
          ),
        );
      },
    );
  }

  Positioned spacialOfferLeftArrow(
      int currentPageIndex, PageController pageController) {
    return Positioned(
      top: 100,
      left: 0,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.pink,
        onPressed: () {
          currentPageIndex--;
          pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  Positioned spacialOfferRightArrow(
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

  ListView spacialOfferListBuilder(PageController pageController) {
    return ListView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: 400,
            height: 220,
            child: Card(
              // Your card content goes here
              elevation: 1,
              child: Center(
                child: Text(
                  'Card $index',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Stack servicesCardSection(
      PageController pageController, int currentPageIndex) {
    return Stack(
      children: [
        serviceCardBuilder(pageController),
        servicesLeftArrow(currentPageIndex, pageController),
        servicesRightArrow(currentPageIndex, pageController),
      ],
    );
  }

  Positioned servicesLeftArrow(
      int currentPageIndex, PageController pageController) {
    return Positioned(
      top: 180,
      left: 0,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.pink,
        onPressed: () {
          currentPageIndex--;
          pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  Positioned servicesRightArrow(
      int currentPageIndex, PageController pageController) {
    return Positioned(
      top: 180,
      right: 0,
      child: IconButton(
        icon: const Icon(Icons.arrow_forward),
        color: Colors.pink,
        onPressed: () {
          currentPageIndex++;
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  SizedBox serviceCardBuilder(PageController pageController) {
    return SizedBox(
      height: 420,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: Card(
                      // Your card content goes here
                      elevation: 1,
                      // Your card content goes here
                      child: Center(
                        child: Text(
                          'Card $index',
                          style: const TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Text textSection() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: "Artfully curated collections embodying\n",
              style: TextStyle(
                  color: TColors.blue,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2)),
          TextSpan(
            text: "The essence of our most refined experiences.",
            style: TextStyle(
                color: TColors.black,
                fontSize: 36,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
