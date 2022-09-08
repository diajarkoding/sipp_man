import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  final double top;
  final double bottom;
  final double right;
  final Color? color;
  const LineDivider(
      {Key? key,
      required this.top,
      required this.bottom,
      this.right = 0,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        bottom: bottom,
        right: right,
      ),
      child: Divider(
        thickness: 1,
        color: color,
      ),
    );
  }
}
