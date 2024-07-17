import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_frequency_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          StringManager.allExpenses,
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        const CustomFrequencyOptions(),
      ],
    );
  }
}
