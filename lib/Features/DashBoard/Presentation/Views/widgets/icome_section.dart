import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_container.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_chart.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_details.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/income_chart_details.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/income_header.dart';

class IcomeSection extends StatelessWidget {
  const IcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Expanded(
            child:
                MediaQuery.sizeOf(context).width > 1862 ||
                        MediaQuery.sizeOf(context).width < 1200
                    ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: IncomeChart()),
                        Expanded(flex: 2, child: IncomeDetails()),
                      ],
                    )
                    : Padding(
                      padding: const EdgeInsets.all(16),
                      child: IncomeChartDetails(),
                    ),
          ),
        ],
      ),
    );
  }
}
