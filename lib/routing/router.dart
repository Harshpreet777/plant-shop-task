import 'package:flutter/material.dart';
import 'package:navigation_task/routing/routes.dart';
import 'package:navigation_task/screens/details_screen.dart';
import 'package:navigation_task/screens/home_screen.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case Routes.detailsRoute:
        return pageRoute(
          const DetailsScreen(),
          settings,
        );
      case Routes.homeRoute:
        return pageRoute(
          const HomeScreen(),
          settings,
        );
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Text('This Page does not Exist'),
                ));
    }
  }

  static pageRoute(Widget child, RouteSettings settings) {
    return FadeRoute(
      child: child,
      routeName: settings.name,
      arguments: settings.arguments,
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  FadeRoute({
    this.child,
    this.routeName,
    this.arguments,
  }) : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
