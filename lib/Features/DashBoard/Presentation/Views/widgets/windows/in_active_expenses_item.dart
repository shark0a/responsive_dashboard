import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/all_expenses_item_header.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/all_expenses_item_model.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.model});

  final AllExpensesItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      // color: Color(0xffFFFFFF),
      decoration: ShapeDecoration(
        color: Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(imageurl: model.image , ),
          SizedBox(height: 34),
          Text(model.title, style: AppStyles.styleSemiBold16(context)),
          SizedBox(height: 8),
          Text(model.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 16),
          Text(model.balance, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
