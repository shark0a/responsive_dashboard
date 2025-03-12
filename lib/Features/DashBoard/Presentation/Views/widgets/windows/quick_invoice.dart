import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_container.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/lastest_transaction_list_view.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/quick_invoice_header.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      paddingvalue: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          const SizedBox(height: 12),
          Column(
            children: [
              Text(
                "Latest Transaction",
                style: AppStyles.styleMedium16(context),
              ),
              SizedBox(height: 12),
              LastestTransactionListView(),
            ],
          ),
        ],
      ),
    );
  }
}
