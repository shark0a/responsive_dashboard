import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("Quick Invoice", style: AppStyles.styleSemiBold20(context)),
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
