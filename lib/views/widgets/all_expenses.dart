import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/All_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_items_listviews.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_contanier.dart';
import 'package:responsive_dash_board/views/widgets/lastest_Transction.dart';
import 'package:responsive_dash_board/views/widgets/quick_Invoice_Form.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoic_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGraundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

         AllExpensesHeader(),
         SizedBox(height: 16),
        AllExpensessItemsListviews(),
        
          
        
        ],
      ),
    );
  }
}