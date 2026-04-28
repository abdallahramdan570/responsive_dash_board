
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/allexpensess_and_quickInvoice_section.dart';
import 'package:responsive_dash_board/views/widgets/myCards_and_transction_History_Section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, ),
        child: Column(
          children: [
            AllExpensessAndQuickInvoiceSection(),
            SizedBox(height: 32),
             MycardsAndTransctionHistorySection(),
          ],
        ),
      ),
    );
  }
}