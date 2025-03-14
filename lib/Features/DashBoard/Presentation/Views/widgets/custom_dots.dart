import 'package:flutter/material.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.isactive});
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Container(
        width: isactive ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          color: isactive ? Color(0xFF4DB7F2) : Color(0xFFE7E7E7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
