import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        color: Colors.white,
        child: new Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize*1.1 + 200.0,
          ),
          padding: const EdgeInsets.all(8.0),
          color: Colors.red,
          alignment: Alignment.center,
          child: new Text(
            'Hello World',
            style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
          ),
          transform: Matrix4.rotationZ(0.1),
        ),
      ),
    );
  }
}

/*
new Column(
        children:<Widget>[
          new Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          new Center(
            child:new Container(
              width: 45,
              height: 45,
              color: Colors.blue,
            )
          )
      ],
    );
 */