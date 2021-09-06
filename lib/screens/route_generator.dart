import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'starting_screen.dart';
import 'choose_screen.dart';
import 'game_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => StartingScreen(),
        );
      case '/choose':
        return PageTransition(
          child: ChooseScreen(),
          type: PageTransitionType.bottomToTop,
        );
      case '/game':
        return PageTransition(
          child: GameScreen(
            args,
          ),
          type: PageTransitionType.bottomToTop,
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ERROR'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Page not found!'),
        ),
      );
    });
  }
}
