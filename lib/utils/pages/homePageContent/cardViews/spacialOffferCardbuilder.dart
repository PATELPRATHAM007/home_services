import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/utils/localData/mainService.dart';
import 'package:home_services/utils/localData/spacialOfferColumnList.dart';

class TSpacialOfferCardView {
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
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: InkWell(
            onTap: () {
              // Handle onTap event
              print('Card $index clicked');
            },
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: 400,
              height: 220,
              child: Card(
                elevation: 1,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 220,
                            height: double.infinity,
                            color: TColors.blue,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: spacialOfferColumn[index],
                            ) // Use Colors.blue instead of TColors.blue
                            ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Image.asset(
                              mainServiveData[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
