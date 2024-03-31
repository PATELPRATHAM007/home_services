import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/image_strings.dart';
import 'package:home_services/constants/style.dart';
import 'package:home_services/constants/text_strings.dart';

Widget greetingSection({
  required double screenSizeheight,
  required double screenSizewidth,
}) {
  return Stack(
    children: [
      greetingImageSection(screenSizeheight, screenSizewidth),
      greetingOpacitySection(screenSizeheight, screenSizewidth),
      greetingTextSection(),
    ],
  );
}

Positioned greetingTextSection() {
  return Positioned(
    top: 100,
    left: 150,
    child: Column(
      children: [
        titlePart(),
        const SizedBox(
          height: 30,
        ),
        subInfo(),
        const SizedBox(
          height: 20,
        ),
        exploreButton(),
      ],
    ),
  );
}

Padding exploreButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 15,
    ),
    child: SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: TColors.blue),
        child: Text(
          TTextStrings.exploreService,
          style: TStyle.smallProFontStyle(),
        ),
      ),
    ),
  );
}

SizedBox subInfo() {
  return SizedBox(
    width: 950,
    child: Text(
      TTextStrings.qualityInfo,
      style: TStyle.smallProFontStyle(
        height: 0.9,
        wordSpacing: 0.7,
        fontWeight: FontWeight.normal,
      ),
      textAlign: TextAlign.justify,
    ),
  );
}

Text titlePart() {
  return Text.rich(
    TextSpan(children: [
      TextSpan(
        text: "${TTextStrings.weProvieding} \n",
        style: TStyle.superFontStyle(),
      ),
      TextSpan(
        text: TTextStrings.qualityWork,
        style: TStyle.superFontStyle(height: 0.9, wordSpacing: 0.7),
      ),
    ]),
    textAlign: TextAlign.center,
  );
}

Container greetingOpacitySection(
    double screenSizeheight, double screenSizewidth) {
  return Container(
    height: screenSizeheight + 70,
    width: screenSizewidth,
    color: TColors.black.withOpacity(0.4),
  );
}

Container greetingImageSection(
    double screenSizeheight, double screenSizewidth) {
  return Container(
    height: screenSizeheight + 70,
    width: screenSizewidth,
    color: Colors.transparent,
    child: Image.asset(
      TImageStrings.homeWorker,
      fit: BoxFit.fill,
    ),
  );
}
