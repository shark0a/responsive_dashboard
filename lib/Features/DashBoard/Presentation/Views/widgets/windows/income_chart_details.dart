import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeChartDetails extends StatefulWidget {
  const IncomeChartDetails({super.key});

  @override
  State<IncomeChartDetails> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChartDetails> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, piechartResponse) {
          activeIndex =
              piechartResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? -1.3 : null,
          title: activeIndex == 0 ? "Design service" : "40%",
          titleStyle: AppStyles.styleSemiBold20(
            context,
          ).copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          color: Color(0xff208CC8),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? -1.3 : null,
          title: activeIndex == 1 ? "Design product" : "25%",
          titleStyle: AppStyles.styleSemiBold20(
            context,
          ).copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          color: Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? -1.3 : null,
          title: activeIndex == 2 ? "Product royalti" : "20%",
          titleStyle: AppStyles.styleSemiBold20(
            context,
          ).copyWith(color: activeIndex == 2 ? null : Colors.white),
          value: 20,
          color: Color(0xff064061),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? -1.3 : null,
          titleStyle: AppStyles.styleSemiBold20(
            context,
          ).copyWith(color: activeIndex == 3 ? null : Colors.white),
          title: activeIndex == 3 ? "Other" : "22%",
          value: 22,
          color: Color(0xffE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
