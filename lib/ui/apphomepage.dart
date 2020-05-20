
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

final toolbarTextStyle = TextStyle(color: Colors.white, fontSize: 16.0);

class AppHomePage extends StatefulWidget {
  AppHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) {
      return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(widget.title, style: toolbarTextStyle,),
        ios: (_)=> CupertinoNavigationBarData(
          transitionBetweenRoutes: false,
          trailing: PlatformButton(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),  
          ),
        ),
      ),
      
      android: (_) => MaterialScaffoldData(
        floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        tooltip: 'Screen 1',
        child: Icon(Icons.add),
      )
      ),
      body: Center(
        child:
        Text(
            "Screen 1",
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
      ));
  }
}