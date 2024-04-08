import 'package:flutter/material.dart';

class CUserIcon extends StatefulWidget {
  const CUserIcon({super.key});

  @override
  State<CUserIcon> createState() => _CUserIconState();
}

class _CUserIconState extends State<CUserIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your desired action when the user icon is clicked
        print('User icon clicked');
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
    );
  }
}