import 'package:flutter/material.dart';
import 'NavigatorFirstWidget.dart';
class NavigatorHomeWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child:new RaisedButton(
        onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new NavigatorFirstWidget())),
        child: new Text('gotonext'),
      ),
    );
  }
}