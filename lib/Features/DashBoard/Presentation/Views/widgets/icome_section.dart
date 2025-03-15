import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_container.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_chart.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_details.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/income_header.dart';

class IcomeSection extends StatelessWidget {
  const IcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
