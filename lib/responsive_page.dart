import 'package:flutter/material.dart';
import 'package:layout_responsivo/layouts/mobile_layout.dart';
import 'package:layout_responsivo/layouts/web_layout.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return size.width <= 664 ? const MobileLayout() : const WebLayout();
  }
}
