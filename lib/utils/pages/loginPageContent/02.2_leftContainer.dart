import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/commonFIles/logoComponents/logo.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/commonFIles/textField.dart';
import 'package:home_services/services/Firebase_auth_Services.dart';
import 'package:home_services/validation/fieldValidation.dart';

class TLoginLeftSideContainer extends StatefulWidget {
  const TLoginLeftSideContainer({super.key});

  @override
  State<TLoginLeftSideContainer> createState() =>
      _TLoginLeftSideContainerState();
}

class _TLoginLeftSideContainerState extends State<TLoginLeftSideContainer> {

   final FirebaseAuthService _auth = FirebaseAuthService();
   
  TextEditingController phoneNumberOrEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Validator validator = Validator();

 String phoneNumber = '';
  String email = '';
  bool passwordValid = true;
  String passwordErrorMessage = '';
  Timer? _timer;

  List<String> emptyFields = [];
  String ? errorMessage;

  @override
  void dispose() {
    _timer?.cancel();
    phoneNumberOrEmailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  void _startTimer(Function function) {
    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 500), () {
      function();
    });
  }

  void updatePhoneNumberOrEmail(String value) {
  setState(() {
    // Check if the input matches a phone number format
    if (RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      phoneNumber = value;
      email = ''; // Clear email if it's a phone number
    }
    // Check if the input matches an email format
    else if (RegExp(
            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
        .hasMatch(value)) {
      email = value;
      phoneNumber = ''; // Clear phone number if it's an email
    }
  });
}

  void updatePasswordValidation(String value) {
    setState(() {
      passwordErrorMessage = '';
      _startTimer(() {
        setState(() {
          passwordValid = validator.validatePassword(value);
          passwordErrorMessage = validator.getPasswordErrorMessage(value);
           if (passwordController.text.isNotEmpty) {
            if (emptyFields.contains('password')) {
                emptyFields.remove('password');
                setState(() {}); // Refresh UI to update error messages
              }
          }
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
    Image.asset("assets/images/search.png", width: 20, height: 20),
    Image.asset("assets/images/facebook.png", width: 24, height: 24),
    Image.asset("assets/images/twitter.png", width: 24, height: 24),
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
        emailFieldOrPhoneNo(),
        //email validtor
        //
        //space
        const SizedBox(height: 15),
        //password field
        passwordField(),
        // passwordvalidator
        // forgot password
        forgotPassword(),
        // login button
        loginButton(),
        if (emptyFields.isNotEmpty) 
          emptyField()
      ],
    );
  }

  Padding emptyField() {
     String errorMessage = emptyFields.join(', ');
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          // Wrap with Flexible
          child: Text(
            '$errorMessage is empty',
            style: const TextStyle(color: Colors.red, height: 1.1),
          ),
        ),
      ],
    ),
  );
  }

  Padding loginButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 2),
      child: SizedBox(
        height: TSizeValues.lsbtnHeight,
        width: TSizeValues.lsbtnwidth,
        child: ElevatedButton(
          onPressed:() {
          if (phoneNumberOrEmailController.text.isEmpty) {
            if(!emptyFields.contains('Email')){
            emptyFields.add('Email');

            }
          }
          if (passwordController.text.isEmpty) {
            if(!emptyFields.contains('Password')){

            emptyFields.add('Password');
            }

          }
            _signup();

          setState(() {}); // Refresh UI to show error messages
        },
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
            _showPassword ? Icons.visibility : Icons.visibility_off,color: Colors.grey,
          ),
          onPressed: passwordVisibility,
        ),
      ),
    );
  }

  Padding emailFieldOrPhoneNo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizeValues.fieldPadding),
      child: CommonTextField(
        controller: phoneNumberOrEmailController,
        labelText: 'Email or Phone no.',
        hintText: 'Enter your email or Phone Number',
        prefixIcon: Icons.email,
        onChanged: updatePhoneNumberOrEmail,
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: InkWell(
              onTap: () {
                // open google login
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
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
    ) ;
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

  void _signup() async{
    
    String email = phoneNumberOrEmailController.text;
    String password = passwordController.text;
    

    User ? user = await _auth.loginWithEmailAndPassword(email, password);

    if (user != null) {
       // ignore: use_build_context_synchronously
       context.go('/');
    }
    else{
      print("some error are there");
    }
  }
}
