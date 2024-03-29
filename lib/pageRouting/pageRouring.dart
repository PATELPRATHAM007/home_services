import 'package:flutter/material.dart';
import 'package:home_services/utils/login_Page.dart';
import 'package:home_services/utils/signUp_page.dart';
class TPageRouting {
  TPageRouting(this.context); // Constructor to initialize context
  final BuildContext context; // Add a context parameter to the class constructor

  void reachSignUpPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TSignUpPage()),
    );
  }
  void reachLoginPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TLoginPage()),
    );
  }
}
