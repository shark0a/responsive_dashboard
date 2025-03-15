import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_chart_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/chart_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static List<ChartItemDetailsModel> chartDetails = const [
    ChartItemDetailsModel(
      title: "Design service",
      value: "40%",
      color: Color(0xff208CC8),
    ),
    ChartItemDetailsModel(
      title: "Design product",
      value: "25%",
      color: Color(0xff4EB7F2),
    ),
    ChartItemDetailsModel(
      title: "Product royalti",
      value: "20%",
      color: Color(0xff064061),
    ),
    ChartItemDetailsModel(
      title: "Other",
      value: "22%",
      color: Color(0xffE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: chartDetails.length,
      itemBuilder: (context, index) {
        return IncomeChartItem(chartItemModel: chartDetails[index]);
      },
    );
  }
}
