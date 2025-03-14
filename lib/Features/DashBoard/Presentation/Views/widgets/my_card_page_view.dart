import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      controller: pageController,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 2),
          child: const MyCard(),
        ),
      ),
    );
  }
}
