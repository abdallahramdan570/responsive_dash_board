import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';

class MyCardPageViews extends StatelessWidget {
  const MyCardPageViews({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(
        dragDevices:
        {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        },
        ),
      child: ExpandablePageView(
        
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: MyCard(),
        )),
      ),
    );
  }
}
