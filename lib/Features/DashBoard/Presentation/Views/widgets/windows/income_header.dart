import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style: AppStyles.styleSemiBold20(context)),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(width: 0, color: Color(0xffF1F1F1)),
            ), // Border color
          ),
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: DropdownButton<String>(
            focusColor: Colors.transparent,
            dropdownColor: Color(0xffF1F1F1),
            value: 'Monthly',
            items:
                ['Dayily', 'Monthly', 'Yearly']
                    .map(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ),
                    )
                    .toList(),
            onChanged: (value) {},
            underline: SizedBox(), // Removes default underline
          ),
        ),
      ],
    );
  }
}
