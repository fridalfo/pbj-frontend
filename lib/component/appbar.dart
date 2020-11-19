import 'package:flutter/material.dart';
import 'dart:math';

enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class AppBarCard extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final Widget child;
  const AppBarCard({
    this.color,
    this.height,
    this.width,
    this.child,
    Key key
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        image: new DecorationImage(
          image: new AssetImage("assets/bg_appbar.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(17),bottomRight: Radius.circular(17) ),
        boxShadow: [new BoxShadow(
          color: Color.fromRGBO(54, 159, 255, 0.65),
          offset: new Offset(0, 10),
          blurRadius: 30
        )],
      ),
      height: height,
      width: width,
      child: Stack(
        children: <Widget>[
          
          SizedBox.expand(
            child: Container(
                child : child
            ),
          )
        ],
      ),
    );
  }
}

class QuarterCirclePainter extends CustomPainter {
  final CircleAlignment circleAlignment;
  final Color color;

  const QuarterCirclePainter({this.circleAlignment, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.height, size.width);
    final offset = circleAlignment == CircleAlignment.topLeft
        ? Offset(.0, .0)
        : circleAlignment == CircleAlignment.topRight
            ? Offset(size.width, .0)
            : circleAlignment == CircleAlignment.bottomLeft
                ? Offset(.0, size.height)
                : Offset(size.width, size.height);
    canvas.drawCircle(offset, radius, Paint()..color = color);
  }

  @override
  bool shouldRepaint(QuarterCirclePainter oldDelegate) {
    return color == oldDelegate.color &&
        circleAlignment == oldDelegate.circleAlignment;
  }
}