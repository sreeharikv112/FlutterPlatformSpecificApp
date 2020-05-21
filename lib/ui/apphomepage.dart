
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_platform_specific_app/utils/color_utils.dart' as ColorUtils;


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
        title: Text(widget.title, style: ColorUtils.toolbarTextStyle,),
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
        child: Icon(Icons.add),
      )
      ),
      body: Center(
        child:
        Text(
            "Landing Screen",
            style: ColorUtils.textStyleBlackPlain,
          ),
      ));
  }
}