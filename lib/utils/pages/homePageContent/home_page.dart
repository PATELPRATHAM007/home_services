import "package:flutter/material.dart";
import 'package:home_services/commonFIles/footerComponents/footer.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/commonFIles/navComponents/navigationBar.dart';
import 'package:home_services/utils/pages/homePageContent/01_greetingSection.dart';
import 'package:home_services/utils/pages/homePageContent/02_services.dart';
import 'package:home_services/utils/pages/homePageContent/03_why_choose_us.dart';
import 'package:home_services/utils/pages/homePageContent/04_booking_process.dart';
import 'package:home_services/utils/pages/homePageContent/cardViews/mainServicesCardBuilder.dart';
import 'package:home_services/utils/pages/homePageContent/cardViews/spacialOffferCardbuilder.dart';

class THomePage extends StatefulWidget {
  const THomePage({super.key});

  @override
  State<THomePage> createState() => _THomePageState();
}

class _THomePageState extends State<THomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    PageController pageController =
        PageController(initialPage: 0, viewportFraction: .25);
    PageController pageController1 =
        PageController(initialPage: 0, viewportFraction: .308);
    PageController pageController2 =
        PageController(initialPage: 0, viewportFraction: .22);
    PageController pageController3 =
        PageController(initialPage: 0, viewportFraction: .22);
    int currentPageIndex = 0;
    int currentPageIndex1 = 0;
    int currentPageIndex2 = 0;
    int currentPageIndex3 = 0;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 75),
          child: const TNavigationBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // greetingSection(
            //   screenSizeheight: screenSize.height,
            //   screenSizewidth: screenSize.width,
            // ),
            const SizedBox(height: 60),
            servicesAndBookingSection(
                screenSize,
                pageController,
                currentPageIndex,
                pageController1,
                currentPageIndex1,
                pageController2,
                currentPageIndex2,
                pageController3,
                currentPageIndex3),

            // section 6 why you choose us
            const SizedBox(height: 120),
            chooseUs(screenSizeheight: screenSize.height, screenSizewidth: screenSize.width),

            //ssection 7 booking process
            bookingProcess(screenSizeheight: screenSize.height, screenSizewidth: screenSize.width),

            // section 8 footer
            footerSection(screenSizeheight: screenSize.height, screenSizewidth: screenSize.width)
          ],
        ),
      ),
    );
  }

  Padding servicesAndBookingSection(
      Size screenSize,
      PageController pageController,
      int currentPageIndex,
      PageController pageController1,
      int currentPageIndex1,
      PageController pageController2,
      int currentPageIndex2,
      PageController pageController3,
      int currentPageIndex3) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TMainServicesCardBuilder().serviceType(
              screenSizeheight: screenSize.height,
              screenSizewidth: screenSize.width,
              pageController: pageController,
              currentPageIndex: currentPageIndex),

          const SizedBox(height: 20),

          TSpacialOfferCardView().spacialOffer(
              pageController: pageController1,
              currentPageIndex: currentPageIndex1),
          // section 4
          const SizedBox(height: 40),

          Text("New and noteworthy",
              style: TextStyle(
                  color: TColors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2)),
          const SizedBox(height: 20),

          ServicesSection().newWorthfulService(
              pageController: pageController2,
              currentPageIndex: currentPageIndex2),

          //section 5
          const SizedBox(height: 60),
          Text("Most booked services",
              style: TextStyle(
                  color: TColors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2)),
          const SizedBox(height: 20),

          ServicesSection().mostlyBookingService(
              pageController: pageController3,
              currentPageIndex: currentPageIndex3),
          //section 6 why you choose us
        ],
      ),
    );
  }
}
