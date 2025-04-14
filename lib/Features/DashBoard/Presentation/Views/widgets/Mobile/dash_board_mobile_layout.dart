import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/all_expensess_and_quickinvok.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/income_section.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/my_card_section_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvokSection(),
          SizedBox(height: 24),
          MyCardSectionAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
