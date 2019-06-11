import 'package:flutter/material.dart';
import 'TextWidget.dart';
import 'ContainerWidget.dart';
import 'ImageWidget.dart';
import 'ExpandedWidget.dart';
import 'ListViewWidget.dart';
import 'HorizontalListViewWidget.dart';
import 'CountsListViewWidget.dart';
import 'SparatedListViewWidget.dart';
import 'CustomListViewWidget.dart';
import 'PageAppBar.dart';
import 'CountWidget.dart';
import 'BottomTabBarWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Widget widget = new Scaffold(
    appBar: new AppBar(
      title: Text('appbar title'),
    ),
    body: new BottomTabBarWidget(),
  );
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: widget,
    );
  }
}


