import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';
import 'package:home_services/utils/pages/aboutUsContents/aboutUsPage.dart';
import 'package:home_services/utils/pages/addToCartContents/addToCart.dart';
import 'package:home_services/utils/pages/homePageContent/home_page.dart';
import 'package:home_services/utils/pages/loginPageContent/login_Page.dart';
import 'package:home_services/utils/pages/servicesContent/DynamicServicePage.dart';
import 'package:home_services/utils/pages/signUpPageContent/signUp_page.dart';
import 'package:home_services/utils/pages/workweRegistrationForm/RegistrationFrom.dart';
import 'package:home_services/utils/temp.dart';

class TPagerouting {
  GoRouter router = GoRouter(routes: <RouteBase>[
     GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const THomePage();
      },
      
     ),
     GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const TLoginPage();
      },
      
     ),
     GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) {
        return const TSignUpPage();
      },
     ),
      GoRoute(
      path: '/cart',
      builder: (BuildContext context, GoRouterState state) {
        return const TAddToCart();
      },
     ),
      GoRoute(
      path: '/aboutus',
      builder: (BuildContext context, GoRouterState state) {
        return const TAboutUsPage();
      },
     ),
      GoRoute(
      path: '/service',
      builder: (BuildContext context, GoRouterState state) {
        return const TServicePage();
      },  
     ),
     GoRoute(
      path: '/temp',
      builder: (BuildContext context, GoRouterState state) {
        return  MyApp();
      },
     ),
     GoRoute(
      path: '/regForm',
      builder: (BuildContext context, GoRouterState state) {
        return  TRegistrationFrom();
      },
     ),
  ],
  );
}