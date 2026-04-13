import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_items_models.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/All_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_items.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_items_listviews.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_contanier.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoic.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override      
  Widget build(BuildContext context) {
    return CustomBackGraundContainer(child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),

          AllExpensessItemsListviews(),

          
        ],
      ), );
  }
}
