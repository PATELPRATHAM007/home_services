import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/logoSection.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/commonFIles/textField.dart';
import 'package:home_services/validation/fieldValidation.dart';

class TLoginLeftSideContainer extends StatefulWidget {
  const TLoginLeftSideContainer({super.key});

  @override
  State<TLoginLeftSideContainer> createState() =>
      _TLoginLeftSideContainerState();
}

class _TLoginLeftSideContainerState extends State<TLoginLeftSideContainer> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Validator validator = Validator();

  bool emailValid = true;
  String emailErrorMessage = '';
  bool passwordValid = true;
  String passwordErrorMessage = '';
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer(Function function) {
    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 500), () {
      function();
    });
  }

  void updateEmailValidation(String value) {
    setState(() {
      emailErrorMessage = '';
      _startTimer(() {
        setState(() {
          emailValid = validator.validateEmail(value);
          emailErrorMessage = validator.getEmailErrorMessage(value);
        });
      });
    });
  }

  void updatePasswordValidation(String value) {
    setState(() {
      passwordErrorMessage = '';
      _startTimer(() {
        setState(() {
          passwordValid = validator.validatePassword(value);
          passwordErrorMessage = validator.getPasswordErrorMessage(value);
        });
      });
    });
  }

  bool _showPassword = true;
  void passwordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  final List<Image> logos = [
    Image.asset("assets/images/search.png", width: 28, height: 28),
    Image.asset("assets/images/facebook.png", width: 32, height: 32),
    Image.asset("assets/images/twitter.png", width: 32, height: 32),
  ];

  @override
  Widget build(BuildContext context) {
    return leftContainer(context);
  }

  Container leftContainer(BuildContext context) {
    return Container(
      width: TSizeValues.subContWidth1,
      height: TSizeValues.subContheight1,
      color: TColors.white,
      child: contents(context),
    );
  }

  Column contents(BuildContext context) {
    return Column(
      children: [
        // logo section
        logoSection(),
        // welcome text
        welcomeText(),
        //space
        const SizedBox(height: 5),
        // login with google or other
        loginMethod(),
        // login breaker
        otherWayToLogin(),
        //space
        const SizedBox(height: 20),
        // email field
        emailField(),
        //email validtor
        if (!emailValid && emailController.text.isNotEmpty)
          invalidEmailException(),
        //space
        const SizedBox(height: 15),
        //password field
        passwordField(),
        // passwordvalidator
        if (!passwordValid && passwordController.text.isNotEmpty)
          invalidPasswordException(),

        // forgot password
        forgotPassword(),
        // login button
        loginButton(),
      ],
    );
  }

  Padding invalidPasswordException() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                // Wrap with Flexible
                child: Text(
                  passwordErrorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        );
  }

  Padding invalidEmailException() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                emailErrorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        );
  }

  Padding loginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: SizedBox(
        height: TSizeValues.lsbtnHeight,
        width: TSizeValues.lsbtnwidth,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 50, 88, 220)),
          child: Text(
            TTextStrings.login,
            style: TextStyle(
                color: TColors.white,
                fontSize: 23,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

  Padding forgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
    );
  }

  Padding passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizeValues.fieldPadding),
      child: CommonTextField(
        controller: passwordController,
        labelText: 'Password',
        hintText: 'Enter your password',
        prefixIcon: Icons.password,
        obscureText: _showPassword,
        onChanged: updatePasswordValidation,
        suffixIcon: IconButton(
          icon: Icon(
            _showPassword ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: passwordVisibility,
        ),
      ),
    );
  }

  Padding emailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizeValues.fieldPadding),
      child: CommonTextField(
        controller: emailController,
        labelText: 'Email',
        hintText: 'Enter your email',
        prefixIcon: Icons.email,
        onChanged: updateEmailValidation,
        suffixIcon: null,
      ),
    );
  }

  Center otherWayToLogin() {
    return Center(
      child: Text(
        TTextStrings.loginOptaion,
        style: TextStyle(
            color: Colors.grey[400],
            fontSize: 16,
            letterSpacing: 1.3,
            fontWeight: FontWeight.w100),
      ),
    );
  }

  Row loginMethod() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 8),
            child: InkWell(
              onTap: () {
                // open google login
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey[400]!,
                          offset: Offset(0, 0))
                    ]),
                child: Center(child: logos[index]),
              ),
            ),
          );
        },
      ),
    );
  }

  Center welcomeText() {
    return Center(
      child: Text(
        TTextStrings.welcomeBack,
        style: const TextStyle(
            letterSpacing: 2, fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding logoSection() {
    return Padding(
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
    );
  }
}
