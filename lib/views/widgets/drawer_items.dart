import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_items.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,
    required this.drawerItemsModels,
    required this.isActive,
  });
  final DrawerItemsModels drawerItemsModels;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItems(drawerItemsModels: drawerItemsModels)
        : InActiveDrawerItems(drawerItemsModels: drawerItemsModels);
  }
}