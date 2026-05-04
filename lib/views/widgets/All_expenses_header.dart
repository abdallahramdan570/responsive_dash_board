import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/rande_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("All Epenses",style: AppStyle.styleSemiBold20(context) ,),

        Expanded(child: SizedBox()),
        RandeOptions(),

      ],
    );
  }
}
