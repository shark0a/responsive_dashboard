class TransactionHistoryCardModel {
  final String title;
  final String date;
  final String balance;
  final bool isWithdrawal;

  const TransactionHistoryCardModel({
    required this.title,
    required this.date,
    required this.balance,
    required this.isWithdrawal,
  });
}
