import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/transaction_history_card.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({
    super.key,
    required this.transactionHistoryCardModel,
  });
  final TransactionHistoryCardModel transactionHistoryCardModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Color(0xffFAFAFA),
        elevation: 0,
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          title: Text(
            transactionHistoryCardModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text( 
            transactionHistoryCardModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          trailing: Text(
            transactionHistoryCardModel.balance,
            style: AppStyles.styleSemiBold20(context).copyWith(
              color:
                  transactionHistoryCardModel.iswithdraw
                      ? Color(0xffF3735E)
                      : Color(0xff7DD97B),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
