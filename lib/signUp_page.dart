import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoSection.dart';
import 'package:home_services/commonFIles/logoSectionStyle.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/loginPageContent/textField.dart';
import 'package:home_services/login_Page.dart';

class TSignUpPage extends StatefulWidget {
  const TSignUpPage({super.key});

  @override
  State<TSignUpPage> createState() => _TSignUpPageState();
}

class _TSignUpPageState extends State<TSignUpPage> {
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
    Size screenSize = MediaQuery.of(context).size;
    TextEditingController _textController = TextEditingController();
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
              children: [
                Container(
                  width: 900 * 0.45,
                  height: 550,
                  color: TColors.blue,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 120,
                      ),
                      Text(
                        "Welcome back!",
                        style: TextStyle(color: TColors.white, fontSize: 50),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "to keep connected with us \n please login with personal info",
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
                                    builder: (context) => const TLoginPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: TColors.white),
                            child: Text(
                              'Login',
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
                ),
                Container(
                    width: 900 * .55,
                    height: 550,
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
                        const Center(
                          child: Text(
                            "Welcome Back",
                            style: TextStyle(
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
                          height: 70,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 110),
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10,
                                mainAxisExtent: 58,
                              ),
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

                        // login breaker
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

                        //space
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Row(
                            children: [
                              SizedBox(
                                width: (900 * .55) / 2.5,
                                child: LTextField(
                                    controller: _textController,
                                    lableText: "First Name",
                                    hitText: "Enter first Name",
                                    perfixIcon: Icons.person,
                                    suffixIcon: null,
                                    obscureText: false),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: (900 * .55) / 2.5,
                                child: LTextField(
                                    controller: _textController,
                                    lableText: "Last Name",
                                    hitText: "Enter Last Name",
                                    perfixIcon: Icons.person,
                                    suffixIcon: null,
                                    obscureText: false),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        // email field
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: LTextField(
                              controller: emailController,
                              lableText: "Email",
                              hitText: "Enter your E-mail",
                              perfixIcon: Icons.email_outlined,
                              suffixIcon: null,
                              obscureText: false),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        // password field
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: LTextField(
                            controller: passwordController,
                            lableText: "Password",
                            hitText: "Enter your password",
                            perfixIcon: Icons.email_outlined,
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

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
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
                                'Sign Up',
                                style: TextStyle(
                                    color: TColors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
