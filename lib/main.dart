import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(const ResponSiveDashBoard());
}
class ResponSiveDashBoard extends StatelessWidget {
  const ResponSiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DashboardView(),);
  }
}