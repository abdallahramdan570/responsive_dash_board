import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_items_models.dart';
import 'package:responsive_dash_board/models/user_info_models.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_title.dart';

class LastestTransctionListviews extends StatelessWidget {
  const LastestTransctionListviews({super.key});

  static const items = [
    UserInfoModels(
      image: Assets.imagesAvatar1,
      title: "Abdallah Ramadan ",
      email: "Abdallahramdan570@gmail.com",
    ),
    UserInfoModels(
      image: Assets.imagesAvatar1,
      title: "John Doe",
      email: "john.doe@example.com",
    ),
    UserInfoModels(
      image: Assets.imagesAvatar1,
      title: "John Doe",
      email: "john.doe@example.com",
    ),
    UserInfoModels(
      image: Assets.imagesAvatar1,
      title: "John Doe",
      email: "john.doe@example.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: 
          items.map((e) => IntrinsicWidth(child: UserInfoListTitle(userInfoModels: e))).toList(),
        
      ),
    );

    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,

    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTitle(userInfoModels: items[index]),
    //       );
    //     },
    //   ),
    // );
  }
}
