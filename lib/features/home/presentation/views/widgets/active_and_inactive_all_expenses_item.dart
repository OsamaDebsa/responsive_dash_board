import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/data/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/active_and_inactive_all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    final formattedPrice = NumberFormat.currency(locale: 'en_US', symbol: '\$')
        .format(allExpensesItemModel.price);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: ColorManager.secondaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side:
                const BorderSide(color: ColorManager.secondaryColor, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ActiveAllExpensesItemHeader(image: allExpensesItemModel.image),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(allExpensesItemModel.title,
                style: Styles.styleSemiBold16(context)
                    .copyWith(color: ColorManager.whiteColor)),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(allExpensesItemModel.date,
                style: Styles.styleRegular14(context)
                    .copyWith(color: ColorManager.whiteColor)),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              formattedPrice,
              style: Styles.styleSemiBold24(context)
                  .copyWith(color: ColorManager.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    final formattedPrice = NumberFormat.currency(locale: 'en_US', symbol: '\$')
        .format(allExpensesItemModel.price);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: ColorManager.whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: ColorManager.borderColor, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InActiveAllExpensesItemHeader(image: allExpensesItemModel.image),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(allExpensesItemModel.title,
                style: Styles.styleSemiBold16(context)),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(allExpensesItemModel.date,
                style: Styles.styleRegular14(context)),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
            child: Text(
              formattedPrice,
              style: Styles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
