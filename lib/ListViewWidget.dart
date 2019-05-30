import 'package:flutter/material.dart';
class ListViewWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
          new ListTile(
              leading: Icon(Icons.add),
              title: new Text('第1项'),
              subtitle: new Text('第1项___'),
            ),

        new ListTile(
          leading: Icon(Icons.add),
          title: new Text('第2项'),
          subtitle: new Text('第1项___'),
        ),

        new ListTile(
          leading: Icon(Icons.add),
          title: new Text('第3项'),
          subtitle: new Text('第1项___'),
        ),

        new ListTile(
          leading: Icon(Icons.add),
          title: new Text('第4项'),
          subtitle: new Text('第1项___'),
        ),

        new ListTile(
          leading: Icon(Icons.add),
          title: new Text('第5项'),
          subtitle: new Text('第1项___'),
        ),
      ],
    );
  }
}
