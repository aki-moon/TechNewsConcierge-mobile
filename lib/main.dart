import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:technewsconciergemobile2/router.dart';
import 'package:technewsconciergemobile2/router.gr.dart';

final _appRouter = MainRouter();

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [MainRouteObserver()],
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
