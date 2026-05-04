import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/custom_text_field.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyle.styleMedium16(context)),
        SizedBox(height: 8),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
