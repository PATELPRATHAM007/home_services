import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoComponents/logo.dart';
import 'package:home_services/commonFIles/logoComponents/logoSectionStyle.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/image_strings.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/utils/localData/footer/footernavData.dart';
import 'package:home_services/utils/localData/footer/sociallinksdata.dart';

Widget footerSection({
  required double screenSizeheight,
  required double screenSizewidth,
}) {
  TextStyle housetextStyle = CTextStyle.companyTextStyle(
        color: TColors.blue, textSize:  22,textWeigth: FontWeight.bold);
    TextStyle hustlertextStyle = CTextStyle.companyTextStyle(
        color: TColors.black, textSize:  22,textWeigth: FontWeight.bold);
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
                    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/Logowhite.png",
          width: TSizeValues.logoWidth,
          height: TSizeValues.logoHeight,
        ),
        const SizedBox(
          width: TSizeValues.logoGap,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TTextStrings.house,
              style: housetextStyle,
            ),
            Text(
              TTextStrings.hustler,
              style: hustlertextStyle,
            )
          ],
        ),
      ],
    )
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
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        footernavLinksSection1.length,
                        (index) {
                          return TextButton(
                            onPressed: () {},
                            child:  Text(
                              footernavLinksSection1[index].textButton,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
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
                    "For customers",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        footernavLinksSection2.length,
                        (index) {
                          return TextButton(
                            onPressed: () {},
                            child:  Text(
                              footernavLinksSection1[index].textButton,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
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
                    "For partners",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        1,
                        (index) {
                          return TextButton(
                            onPressed: () {},
                            child:  Text(
                              footernavLinksSection3.textButton,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
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
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Company",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      socialMediaLinks.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        child: FloatingActionButton(
                          onPressed: () {
                            // Handle button tap
                          },
                          child : Icon(
                            socialMediaLinks[index].icon,
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
