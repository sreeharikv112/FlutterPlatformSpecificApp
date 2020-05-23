import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_specific_app/utils/constants.dart';
import 'package:flutter_platform_specific_app/utils/color_utils.dart'
    as ColorUtils;

class ScreenTabThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:  Text(
            txtSettings,
            style: ColorUtils.tabsContentText,
          ),
        );
  }
}
