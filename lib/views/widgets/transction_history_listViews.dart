import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_models.dart';
import 'package:responsive_dash_board/views/widgets/transction_items.dart';

class TransctionHistoryListviews extends StatelessWidget {
  const TransctionHistoryListviews({super.key});
  static List<TransctionModels> items = [
    TransctionModels(
      title: "Cash Withdrawal",
      date: "13 April 2024",
      amount: "-\$50.00",
      isWithdrawal: true,
    ),
    TransctionModels(
      title: "Landing Page Design",
      date: "12 April 2024",
      amount: "+\$2000.00",
      isWithdrawal: false,
    ),
  
    TransctionModels(
      title: "juni Mobile App Design",
      date: "10 April 2024",
      amount: "+\$500.00",
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: items.map((e) => TransctionItems(transctionModels: e),).toList());
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,

    //   itemBuilder: (context, index) {
    //     return TransctionItems(
    //       transctionModels: items[index] ,
    //     );
    //   },
    // );
  }
}
