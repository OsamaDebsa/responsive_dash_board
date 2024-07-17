import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(StringManager.transactionhistory,
            style: Styles.styleSemiBold20(context)),
        Text(StringManager.seeall,
            style: Styles.styleMedium16(context)
                .copyWith(color: ColorManager.secondaryColor)),
      ],
    );
  }
}
