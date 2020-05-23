import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_specific_app/ui/apphomepage.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_platform_specific_app/utils/color_utils.dart' as ColorUtils;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      android: (_) => MaterialAppData(theme: ColorUtils.materialThemeData),
      ios: (_) => CupertinoAppData(theme: ColorUtils.cupertinoTheme),
      home: AppHomePage(title: 'Flutter Platform Aware App'),
    );
  }
}
