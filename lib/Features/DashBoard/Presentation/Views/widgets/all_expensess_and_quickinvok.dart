import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/all_expenses.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/quick_invoice.dart';

class AllExpensessAndQuickInvokSection extends StatelessWidget {
  const AllExpensessAndQuickInvokSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
