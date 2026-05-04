import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/Custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashBoard_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_desktopLayout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';
import 'package:responsive_dash_board/views/widgets/my_card_seaction.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override

  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      key: scaffoldKey,
      appBar:   SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              title: Center(child: Text("My Dashboard")),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
              backgroundColor: Color(0xFFF7FAFA),
            )
          : null,
          drawer: SizeConfig.width < SizeConfig.tablet ? CustomDrawer() : null,

      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashboardTabletLayout(),
        desktopLayout: (context) => DashboardDesktoplayout(),
      ),
    );
  }
}
