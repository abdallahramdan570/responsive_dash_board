
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class IcomeSectionHeader extends StatelessWidget {
  const IcomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
        Text(
          "Income",
          style:AppStyle.styleSemiBold20
        ),
    
        Container(
          padding: EdgeInsets.symmetric(horizontal: 1, vertical: 12),
          decoration:ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),),
            ) ,
          child: Row(
            children: [
              Text(
                 "Monthly",
               style: AppStyle.styleMedium16,
                
              ),SizedBox(width: 16,),
             
                 Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 20,
                  
                ),
              
            ],
          ),
        ),
      ],
    );
  }
}
