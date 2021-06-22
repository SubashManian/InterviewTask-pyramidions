import 'package:flutter/material.dart';
import 'package:task/res/index.dart';
import 'package:task/screens/index.dart';

Widget button(String buttonName, BuildContext context) {
  return RawMaterialButton(
    onPressed: () {
      currentSelected = int.parse(buttonName)-1;
      Navigator.pushNamedAndRemoveUntil(context, '/Screen$buttonName', (route) => route.isFirst);
    },
    fillColor: grey,
    child: Text("Goto Page $buttonName", style: TextStyle(fontSize: 15, color: white),)
  );
}