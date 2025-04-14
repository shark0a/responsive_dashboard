import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/Mobile/dash_board_mobile_layout.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/Tablet/tablet_layout.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/adabtive_layout.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/windows_layout.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar:
          MediaQuery.of(context).size.width < 800
              ? AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () {
                    scaffoldkey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu_sharp),
                ),
              )
              : null,
      backgroundColor: Color(0xffF7F9FA),
      drawer: CustomDrawer(),
      body: AdabtiveLayout(
        windowsLayout: (context) => WindowsLayout(),
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => TabletLayout(),
      ),
    );
  }
}
