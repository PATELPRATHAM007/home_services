import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/constants/size_values.dart';

class CUserIcon extends StatelessWidget {
  const CUserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 25, // Adjust the size as needed
      child: IconButton(
        onPressed: () {
          selectedButtonIndex = null;
          context.go('/profile');
        },
        icon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        iconSize: 30, // Adjust the size of the icon as needed
      ),
    );
  }
}