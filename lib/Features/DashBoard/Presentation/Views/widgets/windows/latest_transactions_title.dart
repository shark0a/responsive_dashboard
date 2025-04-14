import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/lastest_transaction_list_view.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Text("Latest Transaction", style: AppStyles.styleMedium16(context)),
        const SizedBox(
          height: 16,
        ),
        const LastestTransactionListView()
    ]);
  }
}
