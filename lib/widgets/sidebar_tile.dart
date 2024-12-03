import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SideBarTile extends StatelessWidget {
  const SideBarTile({
    super.key,
    this.color,
    this.icon,
    required this.title,
    this.isVisible = true,
    this.alignment = MainAxisAlignment.center,
  });

  final String title;
  final IconData? icon;
  final Color? color;
  final bool isVisible;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            size: 34.0,
            color: color,
          ),
        ),
        Visibility(
          visible: isVisible,
          child: Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
