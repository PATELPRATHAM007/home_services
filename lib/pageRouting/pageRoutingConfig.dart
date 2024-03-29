import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';
import 'package:home_services/utils/home_page.dart';
import 'package:home_services/utils/login_Page.dart';
import 'package:home_services/utils/signUp_page.dart';

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
  ],
  );
}
