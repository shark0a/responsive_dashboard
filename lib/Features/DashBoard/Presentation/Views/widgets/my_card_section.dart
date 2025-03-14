import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/custom_dot_indicator.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/my_card_page_view.dart';
import 'package:responsive_dashboard/Utils/app_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My card", style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 20),
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 15),
        CustomDotIndicator(currentindex: currentIndex),
      ],
    );
  }
}
