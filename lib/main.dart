import 'package:flutter/material.dart';
import 'TextWidget.dart';
import 'ContainerWidget.dart';
import 'ImageWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget widget = new Scaffold(
    appBar: new AppBar(
      title: Text('appbar title'),
    ),
    body: new Text('asdfasdf', style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
  );
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'test',
      home: new ImageWidget(),
    );
  }
}


