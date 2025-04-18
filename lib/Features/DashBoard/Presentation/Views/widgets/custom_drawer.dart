import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/drawer_list_view.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/in_active_drawer_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/user_info_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/drawer_item_model.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/user_info_list_tile_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoListtileModel: UserInfoListtileModel(
                image: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Setting system",
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
