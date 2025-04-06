import 'package:flutter/material.dart';
import '../../../src/splash/view/page/splash_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {

    case SplashPage.routeName:
      return _pageBuilder(
            (_) => SplashPage(),
        settings: settings,
      );

    // case LoginPage.routeName:
    //   return _pageBuilder(
    //         (_) => LoginPage(),
    //     settings: settings,
    //   );

    // case RegisterPage.routeName:
    //   return _pageBuilder(
    //         (_) => RegisterPage(),
    //     settings: settings,
    //   );

    default:
      return _pageBuilder(
            (_) => const Scaffold(
          body: Center(
            child: Text('No route defined for '),
          ),
        ),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
    Widget Function(BuildContext) page, {
      required RouteSettings settings,
    }) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, _, __) => page(context),
  );
}