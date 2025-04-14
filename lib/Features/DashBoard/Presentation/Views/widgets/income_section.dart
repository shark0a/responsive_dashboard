import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_container.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_chart.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_details.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 20),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
