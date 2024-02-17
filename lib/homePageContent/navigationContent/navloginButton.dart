import 'package:flutter/material.dart';

class NavLoginButton extends StatefulWidget {
  const NavLoginButton({super.key});

  @override
  State<NavLoginButton> createState() => _NavLoginButtonState();
}

class _NavLoginButtonState extends State<NavLoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 50, 88, 220)),
      child: const Text(
        "Login",
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontFamily: "GoogleProductSans"),
      ),
    );
  }
}