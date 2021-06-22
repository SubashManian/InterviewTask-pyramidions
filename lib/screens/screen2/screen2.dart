import 'package:flutter/material.dart';
import 'package:task/component/index.dart';

import '../index.dart';

class Screen2 extends StatefulWidget {
  Screen2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Screen2State createState() => Screen2State();
}

class Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: widget.title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button("3", context)
          ],
        ),
      ),
    );
  }
}