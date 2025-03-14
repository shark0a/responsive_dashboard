import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_history_card.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/transaction_history_card.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});
  final List<TransactionHistoryCardModel> transactionItem = const [
    TransactionHistoryCardModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022 at 3:30 PM",
      balance: "\$20,129",
      iswithdraw: true,
    ),

    TransactionHistoryCardModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      balance: "\$2000",
      iswithdraw: false,
    ),

    TransactionHistoryCardModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      balance: "\$20,000",
      iswithdraw: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "13 April 2022",
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color: Color(0xffAAAAAA)),
            ),
            Column(
              children:
                  transactionItem.asMap().entries.map((e) {
                    int index = e.key;
                    var item = e.value;
                    // if (index == 0) {
                    //   return TransactionHistoryCard(
                    //     transactionHistoryCardModel: item,
                    //     color: Color(0xffF3735E),
                    //   );
                    // } else {
                    //   return TransactionHistoryCard(
                    //     transactionHistoryCardModel: item,
                    //   );
                    // }
                    return TransactionHistoryCard(
                      transactionHistoryCardModel: item,
                    );
                  }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
