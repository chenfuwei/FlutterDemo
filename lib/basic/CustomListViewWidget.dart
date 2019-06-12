import 'package:flutter/material.dart';
class CustomListViewWidget extends StatelessWidget
{
  List<Text> list = List<Text>.generate(100, (index)=>new Text('第$index条'));
  @override
  Widget build(BuildContext context) {
    return new ListView.custom(
        childrenDelegate: new MyChildrenDelegate((context, index){
          return list[index];
        })
    );
  }
}

class MyChildrenDelegate extends SliverChildBuilderDelegate
{
  MyChildrenDelegate(Widget Function(BuildContext, int)build, {int childCount, bool addAutomaticKeepAlive = true,
      bool addRepaintBoundaries = true,}):super(build, childCount: childCount,
  addAutomaticKeepAlives: addAutomaticKeepAlive,
  addRepaintBoundaries: addRepaintBoundaries);

}