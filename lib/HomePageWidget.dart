import 'package:flutter/material.dart';
import 'TextWidget.dart';
import 'ContainerWidget.dart';
 List items = [
  {
    'title':"Text",
    'widget':TextWidget()
  },
  {
    'title':"Container",
    'widget':ContainerWidget()
  }
];

 typedef void OnItemTap(int index);
class HomePageWidget extends StatefulWidget
{

@override
_HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePageWidget>
{
  int _selectIndex = 0;

  void onItemTap(int index)
  {
    setState(() {
      _selectIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
        title: new Text('${items[_selectIndex]['title']} 测试'),
      ),
      body: new Center(
        child:items[_selectIndex]['widget'],
      ),
      drawer: new HomeDrawWidget(onItemTap),
    );
  }
}

class HomeDrawWidget extends StatelessWidget
{
  OnItemTap onItemTap;
  HomeDrawWidget(@required this.onItemTap);
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: Colors.black26),
      child:ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index){
          return new GestureDetector(
            child : new Container(
                child: new Text(items[index]['title'], style: TextStyle(color: Colors.white, fontSize: 17),),
              ),
            onTap: ()=>onItemTap(index),
          );
        },
        separatorBuilder: (context, index) => new Divider(color: Colors.black,),
      ),
    );
  }
}