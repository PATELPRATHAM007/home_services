import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoSection.dart';
import 'package:home_services/commonFIles/logoSectionStyle.dart';
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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
                SizedBox(
                  width: 900 * 0.55,
                  height: 550,
                  // color: Colors.blue,
                  child: Column(
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
                              textStyle: CTextStyle.companyTextStyle(
                                  color: TColors.black,
                                  textSize: TSizeValues.companyTextSize,
                                  textWeigth: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Center(
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              letterSpacing: 2,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 110),
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        3, // Number of items in a row
                                    crossAxisSpacing: 10,
                                    //  mainAxisSpacing: 8.0,
                                    mainAxisExtent: 58),
                            itemBuilder: (BuildContext context, int index) {
                              // You can customize the content of each grid item (rectangle) here
                              return Container(
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            side: const BorderSide(
                                                color: Colors.grey,
                                                width: 1.5)),
                                        backgroundColor: TColors.white),
                                    child: const Icon(
                                      Icons.alarm,
                                      color: Colors.grey,
                                    )),
                              );
                            },
                            itemCount: 3, // Total number of items in the grid
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "or use your email address for login",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 16,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            labelStyle: const TextStyle(color: Colors.grey),
                            hintStyle: const TextStyle(color: Colors.grey),
                            prefixIcon: const Icon(Icons.email_outlined,
                                color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 35),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 179, 49, 49),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            hintStyle: const TextStyle(color: Colors.grey),
                            hintText: 'Enter your password',
                            prefixIcon: const Icon(
                              Icons.key_rounded,
                              color: Colors.grey,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 25),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 179, 49, 49),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: TColors.blue,
                                    fontSize: 16,
                                    color: TColors.blue,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: SizedBox(
                          height: 50,
                          width: 400,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 50, 88, 220)),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: TColors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500),
                            ),
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
        ),
      ],
    ));
  }
}
