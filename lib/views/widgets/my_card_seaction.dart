import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/dots_indeicator.dart';
import 'package:responsive_dash_board/views/widgets/my_card_page_views.dart';

class MyCardSeaction extends StatefulWidget {
  const MyCardSeaction({super.key});

  @override
  State<MyCardSeaction> createState() => _MyCardSeactionState();
}

class _MyCardSeactionState extends State<MyCardSeaction> {
  late PageController pageController ;
  int currentPageIndex = 0 ;
@override
  void initState(){
    super.initState();
    pageController = PageController();
    pageController.addListener(() {

      currentPageIndex = pageController.page!.round() ;
      setState(() {

    });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 540,

          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "my Card ",
              style: AppStyle.styleMedium20.copyWith(color: Color(0xFF4DB7F2)),
            ),
          ),
        ),
        SizedBox(height: 10),
        MyCardPageViews(
          pageController: pageController,
        ),
        SizedBox(height: 20),
        DotsIndeicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
