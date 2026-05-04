
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class TrasnctionHistoryHeader extends StatelessWidget {
  const TrasnctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History",style: AppStyle.styleSemiBold20(context),),
        Text("See All",style: AppStyle.styleMedium16(context).copyWith(color: Color(0xFF4EB7F2)),)
      ],
    );
  }
}