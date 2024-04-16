import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/commonFIles/logoComponents/logo.dart';
import 'package:home_services/commonFIles/textField.dart';
import 'package:home_services/constants/colors.dart';
import 'package:home_services/constants/size_values.dart';
import 'package:home_services/services/Firebase_auth_Services.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';
import 'package:home_services/validation/fieldValidation.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class TSignUpRightSideContainer extends StatefulWidget {
  const TSignUpRightSideContainer({super.key});

  @override
  State<TSignUpRightSideContainer> createState() =>
      _TSignUpRightSideContainerState();
}

class _TSignUpRightSideContainerState extends State<TSignUpRightSideContainer> {

  bool loading = false;
  // final databaseRef = FirebaseDatabase.instance.ref("StoreData");
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController signUpPhoneNumberController = TextEditingController();

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  final Validator validator = Validator();

  bool emailValid = true;
  String emailErrorMessage = '';
  bool passwordValid = true;
  String passwordErrorMessage = '';
  Timer? _timer;

  List<String> emptyFields = [];
  String? errorMessage;

  @override
  void dispose() {
    _timer?.cancel();
    firstName.dispose();
    lastName.dispose();
    signUpEmailController.dispose();
    signUpPasswordController.dispose();
    signUpPhoneNumberController.dispose();
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
          if (signUpEmailController.text.isNotEmpty) {
            if (emptyFields.contains('password')) {
              emptyFields.remove('password');
              setState(() {}); // Refresh UI to update error messages
            }
          }
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
          if (signUpPasswordController.text.isNotEmpty) {
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
        width: 900 * .55, height: 550, color: TColors.white, child: contents());
  }

  Column contents() {
    return Column(
      children: [
        // logo section
        // logoSection(),
        SizedBox(height: 10,),
        // welcome text
        welcomeText(),
        //space
        const SizedBox(height: 5),
        // login with google or other
        signUpMethod(),
        // login breaker
        otherWayToLogin(),
        //space
        const SizedBox(height: 20),
        //user Name
        userName(),
        const SizedBox(height: 10),
        phoneNumberField(),
        const SizedBox(height: 10),

        // email field
        emailField(),
        //email validation
        if (!emailValid && signUpEmailController.text.isNotEmpty)
          invalidEmailException(),
        //space
        const SizedBox(
          height: 10,
        ),

        // password field
        passwordField(),
        // passwordvalidator
        if (!passwordValid && signUpPasswordController.text.isNotEmpty)
          invalidPasswordException(),

        signUpButton(),
        if (emptyFields.isNotEmpty) emptyField()
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
              style: const TextStyle(color: Colors.red, height: 1.1),
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
            style: const TextStyle(color: Colors.red, height: 1.1),
          ),
        ],
      ),
    );
  }

  Padding signUpButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 2),
    child: SizedBox(
      height: 50,
      width: 400,
      child: ElevatedButton(
        onPressed: () async {
          if (firstName.text.isEmpty) {
            if (!emptyFields.contains('First Name')) {
              emptyFields.add('First Name');
            }
          }
          if (lastName.text.isEmpty) {
            if (!emptyFields.contains('Last Name')) {
              emptyFields.add('Last Name');
            }
          }
          if (signUpEmailController.text.isEmpty) {
            if (!emptyFields.contains('Email')) {
              emptyFields.add('Email');
            }
          }
          if (signUpPasswordController.text.isEmpty) {
            if (!emptyFields.contains('Password')) {
              emptyFields.add('Password');
            }
          }
          setState(() {});
          signinOrNOt = true;
          bool signUpSuccess = await _signup();
          if (signUpSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Sign Up Successful'),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 50, 88, 220),
        ),
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: TColors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}


  Padding phoneNumberField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizeValues.fieldPadding),
      child: IntlPhoneField(
        controller: signUpPhoneNumberController,
        decoration: InputDecoration(
          labelText: "Phone no.",
          hintText: "Enter your Phone Number ",
          labelStyle: const TextStyle(color: Colors.grey),
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.phone, color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 35),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        initialCountryCode: 'IN',
        disableLengthCheck: false,
        invalidNumberMessage: "10 digits only",
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(500),
        ),
        pickerDialogStyle: PickerDialogStyle(
          width: 400,
          backgroundColor: Colors.white,
        ),
        // disableAutoFillHints:  ,
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }

  Padding passwordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizeValues.fieldPadding),
      child: CommonTextField(
        controller: signUpPasswordController,
        labelText: 'Password',
        hintText: 'Enter your password',
        prefixIcon: Icons.password,
        obscureText: _showPassword,
        onChanged: (value) {
          if (emptyFields.contains('Password') && value.isNotEmpty) {
            emptyFields.remove('Password');
            setState(() {}); // Refresh UI to update error messages
          }
          updatePasswordValidation(value); // Validate password
        },
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
        controller: signUpEmailController,
        labelText: 'Email',
        hintText: 'Enter your email',
        prefixIcon: Icons.email,
        onChanged: (value) {
          if (emptyFields.contains('Email') && value.isNotEmpty) {
            emptyFields.remove('Email');
            setState(() {}); // Refresh UI to update error messages
          }
          updateEmailValidation(value); // Validate email
        },
        suffixIcon: null,
      ),
    );
  }

  Padding userName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: CommonTextField(
              controller: firstName,
              labelText: "First Name",
              hintText: "Enter first Name",
              prefixIcon: Icons.person,
              suffixIcon: null,
              obscureText: false,
              onChanged: (value) {
                if (emptyFields.contains('First Name')) {
                  emptyFields.remove('First Name');
                  setState(() {}); // Refresh UI to update error messages
                }
              },
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: CommonTextField(
              controller: lastName,
              labelText: "Last Name",
              hintText: "Enter Last Name",
              prefixIcon: Icons.person,
              suffixIcon: null,
              obscureText: false,
              onChanged: (value) {
                if (emptyFields.contains('Last Name')) {
                  emptyFields.remove('Last Name');
                  setState(() {}); // Refresh UI to update error messages
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Center otherWayToLogin() {
    return Center(
      child: Text(
        "or use your email address for login",
        style: TextStyle(
            color: Colors.grey[400],
            fontSize: 16,
            letterSpacing: 1.3,
            fontWeight: FontWeight.w100),
      ),
    );
  }

  Row signUpMethod() {
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
    );
  }

  Center welcomeText() {
    return const Center(
      child: Text(
        "Welcome Back",
        style: TextStyle(
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

  Future<bool> _signup() async {
  String firstname = firstName.text;
  String lastname = lastName.text;
  String email = signUpEmailController.text;
  String password = signUpPasswordController.text;
  String phoneNumber = signUpPhoneNumberController.text;

  User? user = await _auth.signUpWithEmailAndPassword(email, password);

  if (user != null) {
    // ignore: use_build_context_synchronously
    context.go('/');
    return true; // Corrected spelling
  } else {
    print("some error are there");
    return false; // Added semicolon
  }
}

}
