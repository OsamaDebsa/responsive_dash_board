import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/data/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActivated,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActivated;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 800),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: isActivated
          ? ActiveAllExpensesItem(
              key: const ValueKey<bool>(true),
              allExpensesItemModel: allExpensesItemModel,
            )
          : InActiveAllExpensesItem(
              key: const ValueKey<bool>(false),
              allExpensesItemModel: allExpensesItemModel,
            ),
    );
  }
}
