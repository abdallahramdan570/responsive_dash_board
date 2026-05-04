import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.backgroundColor, this.textColor, required this.text});


final Color? backgroundColor, textColor;
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          backgroundColor:backgroundColor ?? Color(0xFF4DB7F2),
        ),

        onPressed: () {},

        child: Text(text, style: AppStyle.styleSemiBold18(context)  .copyWith(color: textColor ?? Colors.white)),
      ),
    );
  }
}

