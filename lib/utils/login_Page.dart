import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoSection.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/utils/loginPageContent/textField.dart';
import 'package:home_services/utils/signUp_page.dart';

class TLoginPage extends StatefulWidget {
  const TLoginPage({super.key});

  @override
  State<TLoginPage> createState() => _TLoginPageState();
}

class _TLoginPageState extends State<TLoginPage> {
  final TextEditingController emailController = TextEditingController();

  bool _showPassword = false;
  final TextEditingController passwordController = TextEditingController();
  void passwordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  bool isBlueContainerOnLeft = true;

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        // background image
        Center(
          child: Container(
            clipBehavior: Clip.antiAlias,
            width: TSizeValues.mianContWidth,
            height: TSizeValues.mianContHeight,
            decoration: BoxDecoration(
                color: TColors.white,
                borderRadius: BorderRadius.circular(TSizeValues.mianContRadious),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color.fromARGB(255, 196, 196, 196),
                    offset: Offset(0, 0),
                    // spreadRadius: 5
                  )
                ]),
            child: Row(
              children: [
                Container(
                  width: TSizeValues.subContWidth1,
                  height: TSizeValues.subContheight1,
                  color: TColors.white,
                  child: Column(
                    children: [
                      // logo section
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

                      // welcome text
                      Center(
                        child: Text(
                          TTextStrings.welcomeBack,
                          style: const TextStyle(
                              letterSpacing: 2,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                      //space
                      const SizedBox(
                        height: 20,
                      ),

                      // login with google or other
                      SizedBox(
                        height: TSizeValues.girdBoxHeight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: TSizeValues.girdBoxPadding),
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: TSizeValues.girdBoxCrossSpace,
                              mainAxisExtent: TSizeValues.girdBoxMainExent,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              // You can customize the content of each grid item (rectangle) here
                              return ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(TSizeValues.girdBoxRadious),
                                          side: const BorderSide(
                                              color: Colors.grey,
                                              width: TSizeValues.girdBoxBorderWidth)),
                                      backgroundColor: TColors.white),
                                  child: const Icon(
                                    Icons.alarm,
                                    color: Colors.grey,
                                  ));
                            },
                            itemCount: 3, // Total number of items in the grid
                          ),
                        ),
                      ),

                      // login breaker
                      Center(
                        child: Text(
                          TTextStrings.loginOptaion,
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 16,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w100),
                        ),
                      ),

                      //space
                      const SizedBox(
                        height: 20,
                      ),

                      // email field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: TSizeValues.fieldPadding),
                        child: LTextField(
                            controller: emailController,
                            lableText: TTextStrings.email,
                            hitText: TTextStrings.enterEmail,
                            perfixIcon: Icons.email_outlined,
                            suffixIcon: null,
                            obscureText: false),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // password field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: TSizeValues.fieldPadding),
                        child: LTextField(
                          controller: passwordController,
                          lableText: TTextStrings.password,
                          hitText: TTextStrings.enterPass,
                          perfixIcon: Icons.password,
                          obscureText: _showPassword,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: passwordVisibility,
                          ),
                        ),
                      ),

                      // forgot password
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  TTextStrings.forgotPass,
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
                          height: TSizeValues.lsbtnHeight,
                          width: TSizeValues.lsbtnwidth,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 50, 88, 220)),
                            child: Text(
                              TTextStrings.login,
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
                  width: TSizeValues.subContWidth2,
                  height: TSizeValues.subContheight2,
                  color: const Color.fromARGB(255, 50, 88, 220),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      Text(
                        TTextStrings.hiiThere,
                        style: TextStyle(color: TColors.white, fontSize: 50),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        TTextStrings.enterDetails,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: TColors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: SizedBox(
                          height: 42,
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to the login page when the button is pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TSignUpPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: TColors.white),
                            child: Text(
                              TTextStrings.signUp,
                              style: TextStyle(
                                  color: TColors.blue,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
