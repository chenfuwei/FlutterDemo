import 'package:flutter/material.dart';
class ExpandedWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[

          new Container(
            child:new Expanded(
              child: new Image.asset('images/timg.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ),

        new Expanded(
          child:new Container(
            child: new Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3479484698,3079380386&fm=27&gp=0.jpg',
              fit: BoxFit.fitWidth,
            ),

            decoration: new BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.amber, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
        ),
      ],
    );
  }
}