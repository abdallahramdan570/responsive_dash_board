import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/allexpensess_and_quickInvoice_section.dart';
import 'package:responsive_dash_board/views/widgets/dashBoard_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/myCards_and_transction_History_Section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: Padding(
          padding: const EdgeInsets.only(top:40),
          child: DashBoardMobileLayout(),
        )),
        SizedBox(width: 32),
  
      ],
    );
  }
}
