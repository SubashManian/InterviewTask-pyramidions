import 'package:flutter/material.dart';

Widget appbar(String title, Function callBack) {
  return AppBar(
    centerTitle: true,
    title: Text(title),
    leading: IconButton(onPressed: callBack, icon: Icon(Icons.menu)),
  );
}