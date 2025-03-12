import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/user_info_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/user_info_list_tile_model.dart';
import 'package:responsive_dashboard/Utils/app_images.dart';

class LastestTransactionListView extends StatelessWidget {
  const LastestTransactionListView({super.key});
  static const List<UserInfoListtileModel> latestitem = [
    UserInfoListtileModel(
      image: Assets.imagesAvatar1,
      subtitle: "Madraniadi20@gmail.com",
      title: "Madrani Andi",
    ),
    UserInfoListtileModel(
      image: Assets.imagesAvatar2,
      subtitle: "Josh Nunito@gmail.com",
      title: "Josua Nunito",
    ),
    UserInfoListtileModel(
      image: Assets.imagesAvatar1,
      subtitle: "Madraniadi20@gmail.com",
      title: "Madrani Andi",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: latestitem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  IntrinsicWidth(
            child: UserInfoListTile(userInfoListtileModel: latestitem[index]),
          );
        },
      ),
    );
  }
}
