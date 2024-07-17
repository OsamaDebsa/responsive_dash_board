import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/all_expenses_item_listview.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 8),
          AllExpensesItemListview()
        ],
      ),
    );
  }
}
