import 'package:flutter/material.dart';

class ResponsiveSideBar extends StatelessWidget {
  final double width;
  final double heght;
  final Widget child;

  const ResponsiveSideBar({
    super.key,
    required this.width,
    required this.heght,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: width,
        height: heght,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3))
            ]),
        padding: const EdgeInsets.all(8),
        child: child,
      ),
    );
  }
}
