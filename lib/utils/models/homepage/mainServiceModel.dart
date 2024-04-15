
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TMainServiceCardView {
  TMainServiceCardView({
    required this.image,
    required this.serviceName,
    required this.dartContainer,
    this.serviceText = "service",
     required this.function  // Default value is "service"
  })  : id = const Uuid().v4();

  final String id;
  final String image;
  Container dartContainer;
  final String serviceName;
  Function function;
  String serviceText; // Updated to allow modification
}
