import 'package:flutter/material.dart';

class FieldInetifier {
  FieldInetifier({
    required this.hint,
    required this.label,
    required this.controller,
  });
  String hint;
  String label;
  TextEditingController controller = TextEditingController();
}
