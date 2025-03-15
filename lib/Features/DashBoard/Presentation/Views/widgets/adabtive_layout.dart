import 'dart:developer';

import 'package:flutter/material.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout({
    super.key,
    required this.windowsLayout,
    required this.mobileLayout,
    required this.tabletLayout,
  });
  final WidgetBuilder windowsLayout, mobileLayout, tabletLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraints.maxWidth <= 1200) {
          return tabletLayout(context);
        } else {
          return windowsLayout(context);
        }
      },
    );
  }
}
