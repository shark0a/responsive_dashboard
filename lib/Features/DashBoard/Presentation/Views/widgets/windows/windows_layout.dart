import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/all_expenses.dart';

class WindowsLayout extends StatelessWidget {
  const WindowsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpenses()),
      ],
    );
  }
}
