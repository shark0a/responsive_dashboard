import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/dashboard.dart';

class ResponsiveDashbaordApp extends StatelessWidget {
  const ResponsiveDashbaordApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive_Dashbaord",
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
