import "package:flutter/material.dart";
import 'package:home_services/constants/colors.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            homeScreenSection1(screenSize),
            const SizedBox(
              height: 60,
            ),
            homeScreenSection2(screenSize, _pageController, currentPageIndex),
            const SizedBox(
              height: 20,
            ),

            // section 3
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 220,
                child: Stack(
                  children: [
                    ListView.builder(
                      controller: _pageController1,
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
            ),

            // section 4
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("New and noteworthy",
                  style: TextStyle(
                      color: TColors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2)),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 290,
                child: Stack(
                  children: [
                    ListView.builder(
                      controller: _pageController2,
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
            ),

            //section 5
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("Most booked services",
                  style: TextStyle(
                      color: TColors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2)),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    ListView.builder(
                      controller: _pageController3,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text.rich(
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
                        color: TColors.black,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Stack(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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
