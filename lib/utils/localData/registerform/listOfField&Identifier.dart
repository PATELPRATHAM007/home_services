import 'package:flutter/cupertino.dart';
import 'package:home_services/utils/models/homepage/field&indentifier.dart';

final fieldInfo = [
  FieldInetifier(hint: "enter First name", label: "first Name",controller: TextEditingController()),
  FieldInetifier(hint: "enter Last name", label: "last Name",controller: TextEditingController()),
  FieldInetifier(hint: "enter middle name", label: "middle Name",controller: TextEditingController()),
];

// ignore: non_constant_identifier_names
final CityStateNation  = [
  FieldInetifier(hint: "enter city name", label: "city",controller: TextEditingController()),
  FieldInetifier(hint: "enter State name", label: "State",controller: TextEditingController()),
  FieldInetifier(hint: "enter Nation name", label: "Nation",controller: TextEditingController()),
];