import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          StringManager.transactionDate,
          style: Styles.styleMedium16(context).copyWith(
            color: ColorManager.greyColor,
          ),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView(),
      ],
    );
  }
}
