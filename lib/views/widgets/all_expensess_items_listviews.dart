import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_items_models.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_items.dart';

class AllExpensessItemsListviews extends StatefulWidget {
  const AllExpensessItemsListviews({super.key});

  static const items = [
    AllExpensessItemsModels(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2024",
      price: r'$ 1,500.00',
    ),
    AllExpensessItemsModels(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2024",
      price: r'$ 2,500.00',
    ),
    AllExpensessItemsModels(
      image: Assets.imagesExpenses,
      title: "Expense",
      date: "April 2024",
      price: r'$ 1,200.00',
    ),
  ];

  @override
  State<AllExpensessItemsListviews> createState() =>
      _AllExpensessItemsListviewsState();
}

class _AllExpensessItemsListviewsState
    extends State<AllExpensessItemsListviews> {
  int selectedIndex = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Row(children: [
 Expanded(
          child: GestureDetector(
            onTap: () {
              uopdateSelectedIndex(0);
            },
            child: AllExpensesItems(
              isSelected: selectedIndex == 0,
              itemsModels: AllExpensessItemsListviews.items[0],
            ),
          ),
        )
        , const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              uopdateSelectedIndex(1);
            },
            child: AllExpensesItems(
              isSelected: selectedIndex == 1,
              itemsModels: AllExpensessItemsListviews.items[1],
            ),
          ),
        )
        , const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              uopdateSelectedIndex(2);
            },
            child: AllExpensesItems(
              isSelected: selectedIndex == 2,
              itemsModels: AllExpensessItemsListviews.items[2],
            ),
          ),
        ),

    ]);
  } 

   
  void uopdateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
