
import 'package:flutter/material.dart';

class CustomBackGraundContainer extends StatelessWidget {
  const CustomBackGraundContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
      ),
      child:child,
    );
  }
}
