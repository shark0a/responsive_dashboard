import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/Mobile/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
      ],
    );
  }
}
