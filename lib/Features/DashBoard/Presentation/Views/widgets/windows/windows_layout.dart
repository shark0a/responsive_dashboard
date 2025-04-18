import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/icome_section.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/my_card_section_and_transaction_history_section.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/all_expenses.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/quick_invoice.dart';

class WindowsLayout extends StatelessWidget {
  const WindowsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
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
                        padding: EdgeInsets.only(top: 40, right: 32),
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
