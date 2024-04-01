import 'package:flutter/material.dart';

class CTextFromField extends StatelessWidget {
  CTextFromField({
    super.key,
    required this.controller,
    required this.hint,
    required this.label,
    required this.valid,
    this.obscuretext,
    this.maxlen,
    this.fillcolor,
    this.preFix,
    this.onChanged, 
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,

  });
  final String hint;
  final String label;
  final TextEditingController controller;
  String? Function(String?) ? valid;
  final Function(String) ? onChanged;
  Color ? fillcolor;
  final int ? maxlen;
  final Widget ?  prefixIcon;
  Widget? suffixIcon;
  Widget? preFix;
  final Color? suffixIconColor;
  final bool ? obscuretext;
  


  @override
  Widget build(BuildContext context) {
    return TextFormField( 
      obscureText: obscuretext ?? false,
      validator: valid,
      controller: controller,
      onChanged: (value) {},
      maxLength: maxlen,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefix: preFix,
        filled: true,
        fillColor: fillcolor ?? Colors.white,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
