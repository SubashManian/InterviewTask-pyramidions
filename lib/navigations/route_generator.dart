import 'package:flutter/material.dart';
import '../screens/index.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case '/Screen1':
        return MaterialPageRoute(builder: (_) => Screen1(title: "Page 1",));
      case '/Screen2':
        return MaterialPageRoute(builder: (_) => Screen2(title: "Page 2",));
      case '/Screen3':
        return MaterialPageRoute(builder: (_) => Screen3(title: "Page 3",));
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => Screen1(title: "Page 1",));
    }
  }

}
