import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/customize_text_form_filed.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomizeTextFormFiled(label: "Customer name")),
            Expanded(child: CustomizeTextFormFiled(label: "Customer Email")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomizeTextFormFiled(label: "Item name")),
            Expanded(child: CustomizeTextFormFiled(label: "Item mount")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: "Add more details",
                textColor: Color(0xFF4DB7F2),
                backgourndColor: Colors.transparent,
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: CustomButton(title: "Send Money")),
          ],
        ),
      ],
    );
  }
}
