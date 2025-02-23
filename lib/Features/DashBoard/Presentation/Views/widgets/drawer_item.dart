import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/active_drawer_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/in_active_drawer_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child:
          isActive
              ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
              : InActiveDrawerItem(drawerItemModel: drawerItemModel),
    );
  }
}
