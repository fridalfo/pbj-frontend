import 'package:flutter/material.dart';

class PbjButton extends StatelessWidget {
  final Color color;
  final Gradient gradient;
  final double height;
  final double width;
  final Widget child;
  final BoxShadow shadow;
  final Function onPress;
  const PbjButton({
    this.onPress,
    this.color,
    this.gradient,
    this.shadow,
    this.height,
    this.width,
    this.child,
    Key key
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: gradient,
        boxShadow: [this.shadow],
        borderRadius: BorderRadius.circular(200),
        color: this.color
      ),
      width: this.width,
      height: this.height,

      child: FlatButton(
        onPressed: this.onPress,
        child: this.child,
      ),
    );
  }
}