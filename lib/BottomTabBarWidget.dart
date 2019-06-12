import 'package:flutter/material.dart';
class BottomTabBarWidget extends StatefulWidget
{
  @override
  _BottomTabBarState createState() {
    return new _BottomTabBarState();
  }
}

class _BottomTabBarState extends State<BottomTabBarWidget>
{
  int curSelectIndex=0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'other 1: School',
      style: optionStyle,
    ),
    Text(
      'other 2: School',
      style: optionStyle,
    ),
  ];

  void _onTapSelect(int selectIndex)
  {
    setState(() {
      curSelectIndex = selectIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _widgetOptions[curSelectIndex],
      bottomNavigationBar:  BottomNavigationBar(
        items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('Home'),),
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('Business')),
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('School')),
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('Other1')),
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('Other2')),

          ],
        type: BottomNavigationBarType.fixed,
        currentIndex: curSelectIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.red,
        onTap: _onTapSelect,
      ),
    );
  }
}