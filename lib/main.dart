import 'package:flutter/material.dart';
import 'package:my_app/HomePageWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePageWidget(),
    );
  }
}


