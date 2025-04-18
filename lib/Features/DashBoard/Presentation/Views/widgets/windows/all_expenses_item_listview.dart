import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Features/DashBoard/Presentation/Views/widgets/windows/all_expenses_item.dart';
import 'package:responsive_dashboard/Features/DashBoard/data/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpensesItemListview extends StatefulWidget {
  const AllExpensesItemListview({super.key});

  @override
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  final List<AllExpensesItemModel> allExpensesItemList = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      balance: "\$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      balance: "\$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      balance: "\$20,129",
    ),
  ];
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          allExpensesItemList.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (selectindex != index) {
                      setState(() {
                        selectindex = index;
                      });
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: AllExpensesItem(
                      model: item,
                      isActive: index == selectindex,
                    ),
                  ),
                ),
              );
            } else {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    if (selectindex != index) {
                      setState(() {
                        selectindex = index;
                      });
                    }
                  },
                  child: AllExpensesItem(
                    model: item,
                    isActive: index == selectindex,
                  ),
                ),
              );
            }
          }).toList(),
    );
  }
}
