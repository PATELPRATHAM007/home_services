import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:home_services/commonFIles/logoSection.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/homePageContent/bodysection.dart';
import 'package:home_services/homePageContent/navigationBar.dart';

class THomePage extends StatefulWidget {
  const THomePage({super.key});

  @override
  State<THomePage> createState() => _THomePageState();
}

class _THomePageState extends State<THomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    PageController _pageController =
        PageController(initialPage: 0, viewportFraction: .23);
    PageController _pageController1 =
        PageController(initialPage: 0, viewportFraction: .308);
    PageController _pageController2 =
        PageController(initialPage: 0, viewportFraction: .22);
    PageController _pageController3 =
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
            homeScreenSection1(screenSize),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  homeScreenSection2(
                      screenSize, _pageController, currentPageIndex),
                  const SizedBox(
                    height: 20,
                  ),

                  // section 3
                  SizedBox(
                    height: 220,
                    child: Stack(
                      children: [
                        ListView.builder(
                          controller: _pageController1,
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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
                        ),
                        Positioned(
                          top: 100,
                          left: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.pink,
                            onPressed: () {
                              currentPageIndex1--;
                              _pageController1.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            color: Colors.pink,
                            onPressed: () {
                              currentPageIndex1--;
                              _pageController1.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                  // section 4
                  const SizedBox(height: 40),
                  Text("New and noteworthy",
                      style: TextStyle(
                          color: TColors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2)),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 290,
                    child: Stack(
                      children: [
                        ListView.builder(
                          controller: _pageController2,
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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
                                          style:
                                              const TextStyle(fontSize: 20.0),
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
                        ),
                        Positioned(
                          top: 100,
                          left: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.pink,
                            onPressed: () {
                              currentPageIndex2--;
                              _pageController2.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            color: Colors.pink,
                            onPressed: () {
                              currentPageIndex2--;
                              _pageController2.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                  //section 5
                  const SizedBox(height: 60),
                  Text("Most booked services",
                      style: TextStyle(
                          color: TColors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2)),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 350,
                    child: Stack(
                      children: [
                        ListView.builder(
                          controller: _pageController3,
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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
                                          style:
                                              const TextStyle(fontSize: 20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            Icon(
                                                Icons.monetization_on_outlined),
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
                        ),
                        Positioned(
                          top: 100,
                          left: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: Colors.pink,
                            onPressed: () {
                              currentPageIndex3--;
                              _pageController3.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            color: Colors.pink,
                            onPressed: () {
                              currentPageIndex3--;
                              _pageController3.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                  //section 6 why you choose us
                ],
              ),
            ),

            // section 6 why you choose us
            const SizedBox(height: 120),
            Container(
              width: screenSize.width,
              height: 650,
              color: TColors.blue,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 140,
                        ),
                        Text(
                          "BEST RESIDENTIAL & COMMERCIAL SERVICES",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "WELCOME TO OUR HOME SERVICES\n",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                              TextSpan(
                                  text: "WE ARE PROFESSIONAL & RELIABLE",
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                            height: 100,
                            width: 700,
                            child: Text(
                              "We understand that in today’s busy world it’s very difficult to manage time for ourselves even, let alone time for fixing things at home. For every person there is always something that needs attention back home be it small issues like repairing home appliances or time consuming ones like getting the décor done.",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                              textAlign: TextAlign.justify,
                            )),
                      ],
                    ),
                    const SizedBox(width: 70),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                width: 400,
                                height: 100,
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // Circular Image
                                    Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.pink),
                                    ),
                                    SizedBox(
                                        width:
                                            16.0), // Add some space between the image and text

                                    // Column with Text Widgets
                                    Container(
                                      width: 370,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'First Text',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Second Text',
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //ssection 7 booking process

            Container(
              width: screenSize.width,
              height: 500,
              color: Colors.white,
            ),

            // section 8 footer
            Container(
              width: screenSize.width,
              height: 500,
              color: TColors.blue,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 30),
                child: Column(
                  children: [
                    // logo
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CLogoSection(
                                logoWidth: TSizeValues.logoWidth,
                                logoHeight: TSizeValues.logoHeight,
                                gap: TSizeValues.logoGap,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Company",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.2),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  6,
                                  (index) {
                                    return TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "hello",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          height: 2,
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                    );
                                  },
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "Company",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.2),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  4,
                                  (index) {
                                    return TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "hello",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          height: 2,
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                    );
                                  },
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "Company",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.2),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  2,
                                  (index) {
                                    return TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "hello",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          height: 2,
                                          fontWeight: FontWeight.w300,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                    );
                                  },
                                ))
                          ],
                        ),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Company",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.2),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                4,
                                (index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,horizontal: 10),
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      // Handle button tap
                                    },
                                    child: const Icon(
                                      Icons.add,
                                    ), // Replace with your desired icon
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox homeScreenSection2(
      Size screenSize, PageController _pageController, int currentPageIndex) {
    return SizedBox(
      height: screenSize.height - 50,
      width: screenSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "Artfully curated collections embodying\n",
                    style: TextStyle(
                        color: TColors.blue,
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2)),
                TextSpan(
                  text: "The essence of our most refined experiences.",
                  style: TextStyle(
                      color: TColors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              SizedBox(
                height: 420,
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        controller: _pageController,
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
              ),
              Positioned(
                top: 180,
                left: 0,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.pink,
                  onPressed: () {
                    currentPageIndex--;
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
              Positioned(
                top: 180,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.pink,
                  onPressed: () {
                    currentPageIndex++;
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Stack homeScreenSection1(Size screenSize) {
    return Stack(
      children: [
        Container(
          height: screenSize.height + 70,
          width: screenSize.width,
          color: Colors.transparent,
          child: Image.asset(
            "assets/images/homeWorker.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: screenSize.height + 70,
          width: screenSize.width,
          color: TColors.black.withOpacity(0.4),
        ),
        Positioned(
          top: 100,
          left: 150,
          child: Column(
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: "We providing \n",
                    style: TextStyle(
                        fontSize: 120,
                        color: TColors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 7),
                  ),
                  TextSpan(
                      text: "A Quality of Work",
                      style: TextStyle(
                          fontSize: 120,
                          color: TColors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5,
                          height: 0.9,
                          wordSpacing: .7)),
                ]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 950,
                child: Text(
                  "Quality work, simplified solutions, joyful results. That's the Home Service Standard. We treat your home like our own, and our expert touch is guaranteed to leave you smiling. Let us transform your to-do list into a done-and-done dream.",
                  style: TextStyle(
                      fontSize: 20,
                      color: TColors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      height: 0.9,
                      wordSpacing: .7),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: TColors.blue),
                    child: Text(
                      "Explore Our Services",
                      style: TextStyle(
                          color: TColors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
