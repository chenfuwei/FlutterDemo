import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.amberAccent,
      ),
      child: new Column(
        children: <Widget>[
          new Text(
            '加粗 24号 无斜线',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                decoration: TextDecoration.none,
            ),
          ),
          new Text(
            '加粗 24号 下斜虚线',
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted
            ),
          ),
          new Text(
            '加粗 24号 上斜虚线',
            style: new TextStyle(
                fontSize: 12,
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.dotted
            ),
          ),
          new Text.rich(
            new TextSpan(
              text:'Hello',
              children: <TextSpan>[
                new TextSpan(
                  text: 'world',
                  style: new TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}