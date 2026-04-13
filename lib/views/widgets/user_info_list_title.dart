import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/user_info_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.userInfoModels});
  final UserInfoModels userInfoModels;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading:SvgPicture.asset(userInfoModels.image) ,
          title: Text(userInfoModels.title,style:AppStyle.styleSemiBold16,),
          subtitle: Text(userInfoModels.email,style:AppStyle.styleRegular12 ,),
        ),
      ),
    );
  }
}