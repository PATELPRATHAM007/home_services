import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LTextField extends StatelessWidget {
  LTextField(
      {super.key,
      required this.controller,
      required this.hitText,
      required this.lableText,
      required this.perfixIcon,
      required this.suffixIcon,
      required this.obscureText});

  TextEditingController controller;
  String lableText;
  String hitText;
  IconData perfixIcon;
  Widget ? suffixIcon;
  bool obscureText;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: lableText,
        hintText: hitText,
        labelStyle: const TextStyle(color: Colors.grey),
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(perfixIcon, color: Colors.grey),
        suffixIcon: suffixIcon,
        suffixIconColor: const Color.fromARGB(255, 134, 134, 134),
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
    );
  }
}
