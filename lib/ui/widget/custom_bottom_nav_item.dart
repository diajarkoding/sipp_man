import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomNavItem extends StatefulWidget {
  final String icon;
  final String name;
  final Color color;
  final Function() onTap;
  // final bool isSelected;
  const CustomBottomNavItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.onTap,
    required this.color,
    // required this.isSelected
  }) : super(key: key);

  @override
  State<CustomBottomNavItem> createState() => _CustomBottomNavItemState();
}

class _CustomBottomNavItemState extends State<CustomBottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              widget.icon,
              width: 24,
              height: 24,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.name,
              style: whiteTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
