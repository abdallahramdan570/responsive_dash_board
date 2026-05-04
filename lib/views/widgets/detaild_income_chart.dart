
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class DetaildIncomeChart extends StatefulWidget {
  const DetaildIncomeChart({super.key});

  @override
  State<DetaildIncomeChart> createState() => _DetaildIncomeChartState();
}

class _DetaildIncomeChartState extends State<DetaildIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getCurrentData()));
  }

  PieChartData getCurrentData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
touchCallback: (p0, pieTouchResponse) {
 activeIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
setState(() {});
},      
      ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0? 1.5 : null,
        title:activeIndex== 0?  "Design services"  : "40%" ,
        value: 40,
        titleStyle: AppStyle.styleMedium16(context).copyWith(color:activeIndex == 0?null : Colors.white),
          radius: activeIndex == 0 ? 60 : 50,
          showTitle: true,
          color:const Color(0xFF2088C7),
        ),

        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1? -1.5 : null,
          title: activeIndex == 1 ? "Products Design" : "25%",
          value: 25,
          titleStyle: AppStyle.styleMedium16(context).copyWith(color:activeIndex == 1 ? null : Colors.white),
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: true ,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2? 1.5 : null,
          title: activeIndex == 2 ? "Products royalties" : "20%",
          value: 20,
          titleStyle: AppStyle.styleMedium16(context).copyWith(color:activeIndex == 2 ? null : Colors.white),
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: true,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3? 1.5 : null,
          title: activeIndex == 3 ? "Other" : "22%",
          value: 22,
          titleStyle: AppStyle.styleMedium16(context).copyWith(color:activeIndex == 3 ? null : Colors.white),
          radius: activeIndex == 3 ? 60 : 50,
          showTitle: true,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
