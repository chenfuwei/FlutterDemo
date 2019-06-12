import 'package:flutter/material.dart';
class NavigatorFirstWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            height:300,
            child: new Navigator(
              initialRoute: '/first',
              onGenerateRoute: (RouteSettings settings){
                print('onGenerateRoute settings.name=${settings.name}');
                RoutePageBuilder build;
                switch(settings.name)
                {
                  case '/':
                  case '/first':
                    build = (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                      return new Center(
                        child:new Column(
                            children:<Widget>[
                              new Text('first page'),
                              new RaisedButton(
                                onPressed: ()=>Navigator.of(context).pushNamed('/second'),
                                child: new Text('go to second page'),
                              ),
                              new RaisedButton(
                                onPressed: ()=>Navigator.of(context).maybePop(),
                                child: new Text('pop to pre'),
                              ),
                            ]
                        ),
                      );
                    };
                    break;
                  case '/second':
                    build = (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                      return new NavigatorSecondWidget();
                    };
                    break;
                  case '/third':
                    build = (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                      return new NavigatorThirdWidget();
                    };
                    break;
                  default:

                    break;
                }
                return PageRouteBuilder(pageBuilder: build);
              },
              onUnknownRoute: (settings){
                print('onUnknownRoute settings.name=${settings.name}');
              },
            ),
          ),
          new Text('测试局部navigator'),
          new RaisedButton(onPressed: ()=>Navigator.of(context).pop(),
            child: new Text('pop pre'),
          )
        ],
      ),
    );
  }
}


class NavigatorSecondWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child:new Column(
        children: <Widget>[
          new Text('second page'),
          new RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed('/third'),
            child: new Text('go to third page'),
          ),
          new RaisedButton(
            onPressed: ()=>Navigator.of(context).maybePop(),
            child: new Text('pop to pre'),
          ),
        ],
      )
    );
  }
}

class NavigatorThirdWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Text('third page'),
          new RaisedButton(
            onPressed: ()=>Navigator.of(context).pushNamed('/first'),
            child: new Text('go to first page'),
          ),
          new RaisedButton(
            onPressed: ()=>Navigator.of(context).maybePop(),
            child: new Text('pop to pre'),
          ),
          new RaisedButton(
            onPressed: ()=>Navigator.of(context, rootNavigator: true).maybePop(),
            child: new Text('finish'),
          ),
        ],
      ),
    );
  }
}
