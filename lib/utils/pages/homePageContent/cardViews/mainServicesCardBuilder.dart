import 'package:flutter/material.dart';

import 'package:home_services/constants/colors.dart';
import 'package:home_services/utils/localData/mainService.dart';

class TMainServicesCardBuilder {
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

  SizedBox serviceCardBuilder(PageController pageController) {
    return SizedBox(
      height: 420,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: mainServiveData.length,
              itemBuilder: (context, index) {
                // Replace mainServiveData[0] with your actual data source

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      mainServiveData[index]
                          .function(context); // Navigate on tap
                    },
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 320,
                      height: 420,
                      child: Card(
                        elevation: 1,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: Image.asset(
                                mainServiveData[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            mainServiveData[0].dartContainer,
                            Align(
                              alignment: Alignment(0.0, .65),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "${mainServiveData[index].serviceName}\n",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 3,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "${mainServiveData[index].serviceText}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                        fontWeight: FontWeight.w600,
                                        height: .7,
                                        letterSpacing: 3,
                                      ),
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
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
}
