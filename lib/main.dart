import 'package:flutter/material.dart';
import 'navigations/route_generator.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: '/Screen1',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

getDevicewidth() {
  return MediaQuery.of(navigatorKey.currentState.overlay.context).size.width;
}

getDeviceheight() {
  return MediaQuery.of(navigatorKey.currentState.overlay.context).size.height;
}