import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/icome_section.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/my_card_section_and_transaction_history_section.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/all_expenses.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/quick_invoice.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                AllExpenses(),
                SizedBox(height: 24),
                Expanded(child: QuickInvoice()),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 21, right: 32),
            child: Column(
              children: [
                MyCardSectionAndTransactionHistorySection(),
                SizedBox(height: 24),
                Expanded(child: IcomeSection()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
