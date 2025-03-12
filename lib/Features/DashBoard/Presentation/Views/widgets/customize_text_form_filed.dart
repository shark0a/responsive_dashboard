import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class CustomizeTextFormFiled extends StatelessWidget {
  const CustomizeTextFormFiled({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xff064061)),
        ),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: TextField(
            cursorColor: Color(0xFF858282),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),

              hintStyle: AppStyles.styleRegular16(
                context,
              ).copyWith(color: Color(0xffAAAAAA)),

              hintText: "Type $label",
              border: OutlineInputBorder(borderSide: BorderSide.none),
              fillColor: Color(0xffFAFAFA),
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
