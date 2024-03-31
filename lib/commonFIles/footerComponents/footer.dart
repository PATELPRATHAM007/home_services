import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoComponents/logo.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';

Widget footerSection({
  required double screenSizeheight,
  required double screenSizewidth,
}) {
  return Container(
    width: screenSizewidth,
    height: 500,
    color: TColors.blue,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 30),
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
          const SizedBox(
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
                  const SizedBox(
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
                  const SizedBox(
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
                  const SizedBox(
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
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
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
  );
}
