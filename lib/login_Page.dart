import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/image_strings.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/constants/style.dart';
import 'package:home_services/constants/text_strings.dart';

class TLoginPage extends StatefulWidget {
  const TLoginPage({super.key});

  @override
  State<TLoginPage> createState() => _TLoginPageState();
}

class _TLoginPageState extends State<TLoginPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        // background image
        Center(
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: 900,
            height: 550,
            decoration: BoxDecoration(
                color: TColors.white,
                borderRadius: BorderRadius.circular(90),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color.fromARGB(255, 196, 196, 196),
                    offset: Offset(0, 0),
                    // spreadRadius: 5
                  )
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 900 * 0.55,
                  height: 550,
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              TImageStrings.logo,
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
                                  style: TStyle.companyTextStyle(
                                      color: TColors.blue),
                                ),
                                Text(
                                  TTextStrings.hustler,
                                  style: TStyle.companyTextStyle(
                                      color: TColors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              letterSpacing: 2,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 50, 88, 220)),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: "GoogleProductSans"),
                          ),
                        ),
                      ),
                      
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // Number of items in a row
                              crossAxisSpacing:
                                  10, // Spacing between items horizontally
                              mainAxisSpacing:
                                  8.0, // Spacing between items vertically
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // You can customize the content of each grid item (rectangle) here
                              return Container(
                                width: 500,
                                height: 500,
                                color: Colors.blue, // Change the color as needed
                                child: Center(
                                  child: Text(
                                    'Item $index',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            },
                            itemCount: 2, // Total number of items in the grid
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 900 * 0.45,
                  height: 550,
                  color: TColors.blue,
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
