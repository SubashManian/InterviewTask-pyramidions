import 'package:flutter/material.dart';
import 'package:task/component/index.dart';

int currentSelected = 0;
class MyScaffold extends StatelessWidget {

  final Widget body;
  final String title;

  MyScaffold({this.body, this.title});

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: appbar(title, (){
        _scaffoldKey.currentState.openDrawer();
      }),
      body: WillPopScope(child: body, onWillPop: (){
        // SystemNavigator.pop();
        return;
      }),
      drawer: MyDrawer(),
    );
  }
}

class Screen1 extends StatefulWidget {
  Screen1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Screen1State createState() => Screen1State();
}

class Screen1State extends State<Screen1> {

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: widget.title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button("2", context)
          ],
        ),
      ),
    );
  }
}