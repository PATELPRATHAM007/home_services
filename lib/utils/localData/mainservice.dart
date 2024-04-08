import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_services/utils/models/mainServiceModel.dart';

final mainServiveData = [
  // element 1
  TMainServiceCardView(
    image: "assets/images/cleaning.jpeg",
    dartContainer: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(.25),
    ),
    function: (BuildContext context){
      context.go('/service');
    },
    serviceName: "cleaing",
  ),
  // element 2
  TMainServiceCardView(
    image: "assets/images/electrician.jpg",
    dartContainer: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(.25),
    ),
    function: (BuildContext context){
      context.go('/service');
    },
    serviceName: "Electrical",
  ),// element 3
  TMainServiceCardView(
    image: "assets/images/painter.webp",
    dartContainer: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(.25),
    ),
    function: (BuildContext context){
      context.go('/service');
    },
    serviceName: "Painting",
  ),
  // element 4
  TMainServiceCardView(
    image: "assets/images/Plumbing.jpg",
    dartContainer: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(.25),
    ),
    function: (BuildContext context){
      context.go('/service');
    },
    serviceName: "Plumbing",
  ),
  // element 5
  TMainServiceCardView(
    image: "assets/images/acsrviceandrepair.jpg",
    dartContainer: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(.25),
    ),
    function: (BuildContext context){
      context.go('/service');
    },
    serviceName: "Appliance repair",
  )
];
