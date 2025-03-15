import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/transaction_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/transaction_history_card.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransactionHistoryCardModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      balance: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryCardModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      balance: r'$20,129',
      isWithdrawal: false,
    ),
    TransactionHistoryCardModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 ',
      balance: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransctionItem(transctionModel: e)).toList(),
    );
  }
}