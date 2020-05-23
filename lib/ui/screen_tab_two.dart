
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_specific_app/utils/color_utils.dart' as ColorUtils;

class ScreenTabTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:  Text(
            "Feeds Update",
            style: TextStyle(color: Colors.brown, fontSize: 30),
          ),
        );
  }
}
