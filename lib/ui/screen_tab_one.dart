import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenTabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child:  Text(
            "Dashboard",
            style: TextStyle(color: Colors.brown, fontSize: 30),
          ),
        );
  }
}
