
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_contanier.dart';
import 'package:responsive_dash_board/views/widgets/icome_chart.dart';
import 'package:responsive_dash_board/views/widgets/icome_section_header.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';
import 'package:responsive_dash_board/views/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGraundContainer(
      child: Column(
        children: [
          IcomeSectionHeader(),
          const SizedBox(height: 16),

          IncomeSectionBody()
        ],
      ),
    );
  }
}