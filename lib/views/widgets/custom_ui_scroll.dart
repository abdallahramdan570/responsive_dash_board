

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/allexpensess_and_quickInvoice_section.dart';
import 'package:responsive_dash_board/views/widgets/myCards_and_transction_History_Section.dart';

class CustomUIScroll extends StatelessWidget {
  const CustomUIScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: AllExpensessAndQuickInvoiceSection(),
                ),
              ),
              SizedBox(width: 24),
              Expanded(child: MycardsAndTransctionHistorySection()),
            ],
          ),
        ),
      ],
    );
  }
}
