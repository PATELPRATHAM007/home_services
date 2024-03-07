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
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 75),
          child: const TNavigationBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // homeScreenSection1(screenSize),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: screenSize.height,
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
                            text:
                                "The essence of our most refined experiences.",
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
                    child: SizedBox(
                      height: 420,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
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
                  ),

                
                ],
              ),
            ),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                      height: 220,
                      child: Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: SizedBox(
                                    width: 400,
                                    
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Stack homeScreenSection1(Size screenSize) {
    return Stack(
      children: [
        Container(
          height: screenSize.height - 70,
          width: screenSize.width,
          color: Colors.transparent,
          child: Image.asset(
            "assets/images/homeWorker.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: screenSize.height - 70,
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
