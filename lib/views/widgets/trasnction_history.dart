import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/transction_history_listViews.dart';
import 'package:responsive_dash_board/views/widgets/trasnction_history_header.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TrasnctionHistoryHeader(),
        SizedBox(height: 10),
        Text(
          "13 April 2024",
          style: AppStyle.styleMedium16.copyWith(color: Color(0xFFAAAAAA)),
        ),
        SizedBox(height: 10),
        TransctionHistoryListviews(),
      ],
    );
  }
}
