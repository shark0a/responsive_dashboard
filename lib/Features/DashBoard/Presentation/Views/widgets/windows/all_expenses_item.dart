import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/active_expenses_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/in_active_expenses_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.model,
    required this.isActive,
  });
  final AllExpensesItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      firstChild: ActiveAllExpensesItem(model: model),
      secondChild: InActiveAllExpensesItem(model: model),
      
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
