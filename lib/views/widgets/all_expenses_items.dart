import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_items_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_items_headers.dart';
import 'package:responsive_dash_board/views/widgets/inActive_and_active_all_expensess_items.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({super.key, required this.itemsModels, required this.isSelected});
  final AllExpensessItemsModels itemsModels;

  final bool isSelected ;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItems(itemsModels: itemsModels)
        : InActiveAllExpensessItems(itemsModels: itemsModels);
  }
}
