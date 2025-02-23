import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.imageurl,
     this.imageColor,
    this.imageBColor,
  });
  final String imageurl;
  final Color? imageColor;
  final Color? imageBColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            color: imageBColor ?? Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(
            imageurl,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              imageColor ?? Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        Icon(Icons.arrow_forward_ios_sharp),
      ],
    );
  }
}
