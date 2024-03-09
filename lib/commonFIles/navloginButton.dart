import 'package:flutter/material.dart';
import 'package:home_services/login_Page.dart';

class NavLoginButton extends StatefulWidget {
  const NavLoginButton({super.key});

  @override
  State<NavLoginButton> createState() => _NavLoginButtonState();
}

class _NavLoginButtonState extends State<NavLoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TLoginPage(),
                        ),
                      );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 50, 88, 220),
        minimumSize: const Size(100, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
        )
      ),
      child: const Text(
        "Login",
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontFamily: "GoogleProductSans"),
      ),
    );
  }
}
