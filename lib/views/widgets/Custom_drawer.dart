import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/models/user_info_models.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_items.dart';
import 'package:responsive_dash_board/views/widgets/drawer_items.dart';
import 'package:responsive_dash_board/views/widgets/drawer_items_list_views.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTitle(
              userInfoModels: UserInfoModels(
                image: Assets.imagesAvatar1,
                title: "John Doe",
                email: "john.doe@example.com",
              ),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 8)),
          Draweritemslistviews(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItems(
                  drawerItemsModels: DrawerItemsModels(
                    title: 'Settings system',
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItems(
                  drawerItemsModels: DrawerItemsModels(
                    title: 'Logout',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
