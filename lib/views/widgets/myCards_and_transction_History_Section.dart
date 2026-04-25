import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/icome_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';
import 'package:responsive_dash_board/views/widgets/my_card_seaction.dart';
import 'package:responsive_dash_board/views/widgets/trasnction_history.dart';

class MycardsAndTransctionHistorySection extends StatelessWidget {
  const MycardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyCardSeaction(),
        const Divider(height: 40, color: Colors.grey),
        const TrasnctionHistory(),
        const SizedBox(height: 24),

       
      ],
    );
  }
}
