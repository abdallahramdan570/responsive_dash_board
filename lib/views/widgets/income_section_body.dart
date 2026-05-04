import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/detaild_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/icome_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    log(width.toString());
    print(width.toString());

    if (width < 400)  {
      return DetaildIncomeChart();
    } else 
    if (width >= SizeConfig.desktop && width < 1943) {
   return DetaildIncomeChart();
    } else {
      return 
      Row(
          children: [
            Expanded(child: IcomeChart()),
            const SizedBox(width: 24),
            Expanded(flex: 2, child: IncomeDetails()),
          ],
        );
    }
  }
}
