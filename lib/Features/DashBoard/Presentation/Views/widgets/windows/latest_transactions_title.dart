import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class LatestTransactionsTitle extends StatelessWidget {
  const LatestTransactionsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Latest Transaction", style: AppStyles.styleMedium16(context));
  }
}
