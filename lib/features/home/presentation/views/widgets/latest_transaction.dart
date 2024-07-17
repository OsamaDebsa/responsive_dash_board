import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/quick_invoice_form.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringManager.latestTransaction,
          style: Styles.styleMedium16(context),
        ),
        const LatestTransactionListView(),
        const Divider(
          height: 48,
          color: ColorManager.borderColor,
        ),
        const QuickInvoiceForm()
      ],
    );
  }
}
