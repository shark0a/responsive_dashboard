import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_history_card.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_list_view.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/transaction_history_card.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        SizedBox(height: 20),
        TransactionListView(),
      ],
    );
  }
}
