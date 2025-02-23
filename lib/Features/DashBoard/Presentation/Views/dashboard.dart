import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/Mobile/mobile_layout.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/Tablet/tablet_layout.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/adabtive_layout.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/windows_layout.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: AdabtiveLayout(
        windowsLayout: (context) => WindowsLayout(),
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
      ),
    );
  }
}
