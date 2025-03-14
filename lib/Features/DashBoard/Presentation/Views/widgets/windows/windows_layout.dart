import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_container.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/all_expenses.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/quick_invoice.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class WindowsLayout extends StatelessWidget {
  const WindowsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
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
                CustomContainer(
                  paddingvalue: 24,
                  child: Column(
                    children: [
                      MyCardSection(),
                      SizedBox(height: 20),
                      Divider(color: Color(0xffF1F1F1), thickness: 1),
                      SizedBox(height: 20),
                      TransactionHistorySection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Column(
          children: [
            Text(
              "13 April 2022",
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color: Color(0xffAAAAAA)),
            ),
          
          ],
        ),
      ],
    );
  }
}
