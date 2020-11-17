import 'package:flutter/material.dart';
import 'dart:math';

import '../constant.dart';

class AppCard extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Widget child;
  const AppCard({
    this.color,
    this.height,
    this.width,
    this.child,
    Key key
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: color,
          
          boxShadow: [new BoxShadow(
            color: Color.fromRGBO(152, 152, 152, 0.18),
            offset: new Offset(0, 10),
            blurRadius: 10
          )],
          borderRadius: BorderRadius.all(Radius.circular(17)),
        ),
        height: height,
        width: width,
        child: child,
            );
  }
}
