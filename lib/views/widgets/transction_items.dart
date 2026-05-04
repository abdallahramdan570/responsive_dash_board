import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TransctionItems extends StatelessWidget {
  const TransctionItems({super.key, required this.transctionModels});

  final TransctionModels transctionModels;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: ListTile(
        title: Text(transctionModels.title, style: AppStyle.styleMedium16(context)),
        
        subtitle: Text(transctionModels.date, style: AppStyle.styleRegular14(context).copyWith(color: Color(0xFFAAAAAA))),
        trailing: Text(
          transctionModels.amount,
          style: AppStyle.styleMedium16(context).copyWith(
            color: transctionModels.isWithdrawal
                ? Color(0xFFEB5757)
                : Color(0xFF27AE60),
          ),
        ),
      ),
    );
  }
}
