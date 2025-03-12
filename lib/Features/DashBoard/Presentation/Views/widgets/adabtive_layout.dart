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
        if (constraints.maxWidth > 900) {
          
          return windowsLayout(context);
        } else if (constraints.maxWidth >= 600) {
          return tabletLayout(context);
        } else {
          return mobileLayout(context);
        }
      },
    );
  }
}
