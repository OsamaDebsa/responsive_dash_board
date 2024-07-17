import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/data/models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColorManager.backGroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: Styles.styleRegular16(context).copyWith(
            color: ColorManager.greyColor,
          ),
        ),
        trailing: Text(transactionModel.amount,
            style: Styles.styleSemiBold20(context).copyWith(
                color: transactionModel.isWithdrawal
                    ? ColorManager.isWithdrawal
                    : ColorManager.isIncome)),
      ),
    );
  }
}
