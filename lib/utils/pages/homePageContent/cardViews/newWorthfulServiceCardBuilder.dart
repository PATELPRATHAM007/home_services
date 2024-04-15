import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";
import "package:home_services/utils/localData/homePage/serviceData.dart";


class TNewWorthfulServicecardView {

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
  itemCount: newAndWorthlyServicesDate.length,
  itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {
          context.go("/service");
          print('Tapped on ${newAndWorthlyServicesDate[index].service}');
        },
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: 280,
              height: 250,
              child: Card(
                elevation: 1,
                child: Image.asset(
                  newAndWorthlyServicesDate[index].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              newAndWorthlyServicesDate[index].service,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  },
)

;
  }
}
