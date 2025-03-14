import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_container.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_history_section.dart';

class MyCardSectionAndTransactionHistorySection extends StatelessWidget {
  const MyCardSectionAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
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
    );
  }
}
