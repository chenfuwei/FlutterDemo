import 'package:flutter/material.dart';
class SparatedListViewWidget extends StatelessWidget
{
  List<Text> list = List.generate(100, (index)=>new Text('第$index条'));
  @override
  Widget build(BuildContext context) {
    return new ListView.separated(
        itemBuilder: (context, index){
          return list[index];
        },
        separatorBuilder: (context, index){
          return const Divider(
            height: 10,
            indent: 10,
            color: Colors.red,
          );
        },
        itemCount: list.length);
  }
}