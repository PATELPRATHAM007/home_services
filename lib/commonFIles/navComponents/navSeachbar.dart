import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';

class CNavSearchBar extends StatefulWidget {
  const CNavSearchBar({super.key});

  @override
  State<CNavSearchBar> createState() => _CNavSearchBarState();
}

class _CNavSearchBarState extends State<CNavSearchBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 480,
        height: 60,
        padding: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 70,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: TColors.blue,
                ),
                child: const Center(
                    child: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
