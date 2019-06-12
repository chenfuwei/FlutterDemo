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
            '加粗 24号 无斜线拉开始大幅拉升看到疯狂拉升的风格来看圣诞节复古镂空设计的礼服刚开始记录的开发工具路上看到飞机过来上课记得发过来看手机里的咖啡馆介绍了肯德基反过来思考江东父老顾客介绍来的反馈给家里开始觉得分开过',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                decoration: TextDecoration.none,
            ),
            overflow: TextOverflow.ellipsis,
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