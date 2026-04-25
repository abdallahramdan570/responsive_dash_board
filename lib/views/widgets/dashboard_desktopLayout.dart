import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/Custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/allexpensess_and_quickInvoice_section.dart';
import 'package:responsive_dash_board/views/widgets/dots_indeicator.dart';
import 'package:responsive_dash_board/views/widgets/icome_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/myCards_and_transction_History_Section.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';
import 'package:responsive_dash_board/views/widgets/my_card_page_views.dart';
import 'package:responsive_dash_board/views/widgets/my_card_seaction.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoic.dart';
import 'package:responsive_dash_board/views/widgets/trasnction_history.dart';

class DashboardDesktoplayout extends StatelessWidget {
  const DashboardDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(width: 24),

        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: MycardsAndTransctionHistorySection()),

              SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverToBoxAdapter(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
