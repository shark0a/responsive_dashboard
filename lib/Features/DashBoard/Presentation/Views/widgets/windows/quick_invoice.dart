import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_container.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/lastest_transaction_list_view.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/latest_transactions_title.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/quick_invoice_form.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/quick_invoice_header.dart';
class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      paddingvalue: 24,
      child: SingleChildScrollView(
        // 🔹 Prevents overflow by making it scrollable
        child: Column(
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 12),
            LatestTransactionsTitle(),
            SizedBox(height: 12),
            LastestTransactionListView(),
            SizedBox(height: 24),
            Divider(color: Color(0xffF1F1F1), thickness: 1),
            SizedBox(height: 24),
            QuickInvoiceForm(),
          ],
        ),
      ),
    );
  }
}
