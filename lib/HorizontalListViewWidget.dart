import 'package:flutter/material.dart';
class HorizontalListViewWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Text('111111111111111111111', style:new TextStyle(fontSize: 100)),
        new Text('222'),
        new Text('333'),
      ],
    );
  }
}