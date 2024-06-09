import 'package:dashboard/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeChart2 extends StatefulWidget {
  const IncomeChart2({super.key});

  @override
  State<IncomeChart2> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart2> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titleStyle: AppStyles.styleBold16(context).copyWith(
            color: activeIndex == 0 ? const Color(0xffF3735E) : Colors.white,
          ),
          radius: activeIndex == 0 ? 60 : 50,
          title: activeIndex == 0 ? 'Design service' : '40%',
          color: const Color(0xff208BC7),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleBold16(context).copyWith(
              color: activeIndex == 1 ? const Color(0xffF3735E) : Colors.white),
          radius: activeIndex == 1 ? 60 : 50,
          title: activeIndex == 1 ? 'Design product' : '25%',
          color: const Color(0xff4DB7F2),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleBold16(context).copyWith(
              color: activeIndex == 2 ? const Color(0xffF3735E) : Colors.white),
          radius: activeIndex == 2 ? 60 : 50,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          color: const Color(0xff064060),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleBold16(context).copyWith(
              color: activeIndex == 3 ? const Color(0xffF3735E) : Colors.white),
          radius: activeIndex == 3 ? 60 : 50,
          title: activeIndex == 3 ? 'Other' : '22%',
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
