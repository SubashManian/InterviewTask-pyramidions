import 'package:flutter/material.dart';
import 'package:task/component/index.dart';

import '../index.dart';

class Screen3 extends StatefulWidget {
  Screen3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Screen3State createState() => Screen3State();
}

class Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: widget.title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button("1", context)
          ],
        ),
      ),
    );
  }
}