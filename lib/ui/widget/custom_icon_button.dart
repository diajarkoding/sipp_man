import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function() onTap;
  final String icon;
  final double? size;
  final Color? color;
  const CustomIconButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      this.color,
      this.size = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        icon,
        width: size,
        height: size,
        color: color,
      ),
    );
  }
}
