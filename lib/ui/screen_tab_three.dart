import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenTabThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          child: Text(
            "Screen Tab Three",
            style: TextStyle(color: Colors.brown, fontSize: 30),
          ),
          color: Colors.blue,
        ));
  }
}
