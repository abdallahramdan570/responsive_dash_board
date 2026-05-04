
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/lastest_transction_listviews.dart';

class LastestTransction extends StatelessWidget {
  const LastestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("Lastest Transction", style: AppStyle.styleSemiBold16(context),
        textAlign: TextAlign.start,
        ),
        SizedBox(height: 16),
        LastestTransctionListviews(),
          
      ],
    );
  }
}


