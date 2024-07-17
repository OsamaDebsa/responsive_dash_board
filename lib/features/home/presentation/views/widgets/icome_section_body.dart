import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/income_chart.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width <= 1500 && width >= SizeConfig.desktop
        ? const Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: DetailedIncomeChart(),
                  ),
                ),
                IncomeDetailsListView(),
              ],
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetailsListView(),
              )
            ],
          );
  }
}
