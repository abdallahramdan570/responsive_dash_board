import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_items.dart';

class Draweritemslistviews extends StatefulWidget {
  Draweritemslistviews({super.key});

  @override
  State<Draweritemslistviews> createState() => _DraweritemslistviewsState();
}

class _DraweritemslistviewsState extends State<Draweritemslistviews> {
  final List<DrawerItemsModels> items = [
    DrawerItemsModels(title: ' Dashboard', image: Assets.imagesDashboard),
    DrawerItemsModels(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemsModels(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemsModels(
      title: "Wallet Account",
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemsModels(
      title: "My investments",
      image: Assets.imagesMyInvestments,
    ),
  
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print('Tapped on: ${items[index].title}');
            if (activeIndex != index) {
              print('Tapped on item: ${items[index].title}');
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItems(
              drawerItemsModels: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
