import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,

      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
            fit: BoxFit.fill,
          ),
          color: Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, top: 16, right: 42),
              title: Text(
                "Name Card",
                style: AppStyle.styleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text("Abdallah Ramadan", style: AppStyle.styleMedium20),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "3321 1244 4432 1234",
                    style: AppStyle.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Exp 12/24",

                    style: AppStyle.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 54 - 28),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
