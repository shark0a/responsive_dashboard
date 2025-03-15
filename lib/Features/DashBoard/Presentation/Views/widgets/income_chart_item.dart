import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/chart_details_model.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class IncomeChartItem extends StatelessWidget {
  const IncomeChartItem({super.key, required this.chartItemModel});
  final ChartItemDetailsModel chartItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: chartItemModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        chartItemModel.title,
        style: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xff064061)),
      ),
      trailing: Text(
        chartItemModel.value,
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}
