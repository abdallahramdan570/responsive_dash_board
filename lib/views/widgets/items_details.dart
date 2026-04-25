
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/items_details_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key, required this.itemsDetailsModel});
  final ItemsDetailsModel itemsDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: itemsDetailsModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(itemsDetailsModel.title, style: AppStyle.styleRegular16),
      trailing: Text(
        '${itemsDetailsModel.percentage}%',
        style: AppStyle.styleMedium16,
      ),
    );
  }
}
