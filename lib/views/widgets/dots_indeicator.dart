import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dot.dart';

class DotsIndeicator extends StatelessWidget {
  const DotsIndeicator({super.key, required this.currentPageIndex});
final int currentPageIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(children: List.generate(3, (index) => Padding(
      padding: const EdgeInsets.only(right: 8),
      child: CustomDotIndeicator(isActive: index == currentPageIndex),
    )),);
  }
}