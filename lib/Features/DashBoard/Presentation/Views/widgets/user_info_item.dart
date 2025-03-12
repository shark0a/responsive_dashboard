import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/user_info_list_tile_model.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoListtileModel});
  final UserInfoListtileModel userInfoListtileModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color(0xffFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(userInfoListtileModel.image),
          title: Text(
            userInfoListtileModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoListtileModel.subtitle,
            style: AppStyles.styleRegular14(context),
          ),
        ),
      ),
    );
  }
}
