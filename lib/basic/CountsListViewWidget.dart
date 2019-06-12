import 'package:flutter/material.dart';
class CountsListViewWidget extends StatelessWidget
{
  List<Text> list = List<Text>.generate(100, (index)=> new Text('$index'));
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list.length,
        itemBuilder: (context, index){
          return list[index];
        }
    );
  }
}