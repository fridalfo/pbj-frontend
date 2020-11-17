import 'package:flutter/material.dart';
class Chips extends StatelessWidget {
    final Color color;
    final double height;
    final double width;
    final Widget child;
    final String title;
    final Border border;
  const Chips({
    this.color,
    this.height,
    this.width,
    this.child,
    this.title,
    this.border,
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          
          // boxShadow: [new BoxShadow(
          //   color: Color.fromRGBO(152, 152, 152, 0.18),
          //   offset: new Offset(0, 10),
          //   blurRadius: 10
          // )],
          border: border,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        height: height,
        width: width,
        child: child,
        );
  }
}