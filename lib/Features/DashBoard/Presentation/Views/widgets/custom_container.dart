import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.paddingvalue,
    this.bordervalue,
  });
  final Widget child;
  final double? paddingvalue;
  final double? bordervalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingvalue ?? 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordervalue ?? 12),
          side: BorderSide(color: Color(0xffFFFFFF)),
        ),
      ),
      child: child,
    );
  }
}
