import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/utils/localData/featureSection/featureData.dart';

Widget chooseUs({required double screenSizeheight,
  required double screenSizewidth,}) {
  return Container(
    width: screenSizewidth,
    height: 650,
    color: TColors.blue,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
                    style: TextStyle(fontSize: 18, color: Colors.white,),
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
                                shape: BoxShape.circle, color: Colors.pink),
                                child: Center(child: Text("${index + 1}",style: TextStyle(fontSize: 22,color: Colors.white),)),
                          ),
                          SizedBox(
                              width:
                                  16.0), // Add some space between the image and text

                          // Column with Text Widgets
                          Container(
                            width: 370,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  featuresList[index].title,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  featuresList[index].paragraph,
                                  style: TextStyle(fontSize: 16.0,height: 1.1),
                                  textAlign: TextAlign.justify,
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
  );
}
