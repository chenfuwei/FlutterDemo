import 'package:flutter/material.dart';

class CountWidget extends StatefulWidget
{
  @override
  _CountSate createState() {
    return new _CountSate();
  }
}

class _CountSate extends State<CountWidget>
{
  int _increment;

  _CountSate():_increment = 0;

  void increment1()
  {
    setState(() {
      _increment++;
    });
  }
  @override
  Widget build(BuildContext context) {

    return new Center(
      child : new SizedBox(
        height: 100,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new AddButtonWidget(increment: increment1),
            new AddTextViewWidget(count: _increment),
            const FlutterLogo(size: 100,),
            new Expanded(child: const Placeholder(
              color: Colors.blue,
              fallbackHeight: 1,
              fallbackWidth: 1,
            ),)

          ],
        ),
      ),
    );
  }
}

class AddButtonWidget extends StatelessWidget
{
  final VoidCallback increment;
  AddButtonWidget({@required this.increment});

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: increment,
      child: const Text(
        '增加计数'
      ),
    );
  }
}

class AddTextViewWidget extends StatelessWidget
{
  final int count;
  AddTextViewWidget({@required this.count});
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(left: 10.0),
      child: new Text(
        '$count',
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }
}