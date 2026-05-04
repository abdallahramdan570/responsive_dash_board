

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class InActiveDrawerItems extends StatelessWidget {
  const InActiveDrawerItems({super.key, required this.drawerItemsModels});

  final DrawerItemsModels drawerItemsModels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemsModels.image),
      title: Text(drawerItemsModels.title, style: AppStyle.styleMedium16(context)),
    );
  }
}


class ActiveDrawerItems extends StatelessWidget {
  const ActiveDrawerItems({super.key, required this.drawerItemsModels});

  final DrawerItemsModels drawerItemsModels;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemsModels.image),
      title: Text(drawerItemsModels.title, 
      style: AppStyle.styleBold16(context)),
      trailing: Container(
        width: 5,
        color: Color(0xFF4EB7F2), // Active indicator color
      ),
    );
  }
}
