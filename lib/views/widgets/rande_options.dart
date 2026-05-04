
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class RandeOptions extends StatelessWidget {
  const RandeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFF1F1F1),width: 1),
          borderRadius: BorderRadius.circular(12),),
        
      ),
      child: Row(
        children: [
          Text("Monthly",style: AppStyle.styleMedium16(context),),
          SizedBox(width: 18,),
          Icon(Icons.keyboard_arrow_down_outlined,
          color: Color(0xFF064061),)
        ],
      ),
    );
  }
}