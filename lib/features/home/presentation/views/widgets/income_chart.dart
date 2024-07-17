import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          setState(() {
            touchedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          color: ColorManager.lookLikeSecondaryColor,
          value: 40,
          showTitle: false,
          radius: touchedIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          color: ColorManager.secondaryColor,
          value: 25,
          radius: touchedIndex == 1 ? 60 : 50,
          showTitle: false,
        ),
        PieChartSectionData(
          color: ColorManager.mainColor,
          value: 20,
          radius: touchedIndex == 2 ? 60 : 50,
          showTitle: false,
        ),
        PieChartSectionData(
          color: ColorManager.lookLikegreyColor,
          value: 22,
          radius: touchedIndex == 3 ? 60 : 50,
          showTitle: false,
        ),
      ],
    );
  }
}
