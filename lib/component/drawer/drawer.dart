import 'package:flutter/material.dart';
import 'package:task/res/index.dart';
import 'package:task/screens/index.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key key}) : super(key: key);

  @override
  MyDrawerState createState() => MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  

  @override
  Widget build(BuildContext context) {
    return (
      Container(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Drawer(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return RawMaterialButton(
                  onPressed: () {
                    setState(() {
                      currentSelected = index;
                    });
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/Screen${index+1}',
                      (route) => route.isCurrent && route.settings.name == '/Screen${index+1}'
                          ? false
                          : true);
                  },
                  fillColor: currentSelected == index ? grey : white,
                  child: Text("Page ${index+1}", style: TextStyle(fontSize: 15, color: currentSelected == index ? white : black),)
                );
              },
            ),
          ),
      )
    );
  }
  
}