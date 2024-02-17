// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:home_services/constants/colors.dart';

class TNavSearchBar extends StatefulWidget {
  const TNavSearchBar({super.key});

  @override
  State<TNavSearchBar> createState() => _TNavSearchBarState();
}

class _TNavSearchBarState extends State<TNavSearchBar> {
  TextEditingController _controller = TextEditingController();
  List<String> suggestions = ['Apple', 'Banana', 'Cherry', 'Date'];

  @override
  Widget build(BuildContext context) {
    return TextField(
      enableSuggestions: true,
      controller: _controller,
      decoration: InputDecoration(
          hintText: "searchbar",
          hintStyle: TextStyle(color: TColors.grey,fontWeight: FontWeight.w100,fontSize: 16),
          filled: true,
          fillColor: Colors.grey[200],
          suffixIcon: Icon(
            Icons.search,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none)),
    );
  }
}
