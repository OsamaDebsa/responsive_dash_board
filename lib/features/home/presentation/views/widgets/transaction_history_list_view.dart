import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/data/models/transaction_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = <TransactionModel>[
    TransactionModel(
      title: StringManager.cashWithdrawal,
      date: StringManager.transactionDate,
      amount: r"$20,129",
      isWithdrawal: true,
    ),
    TransactionModel(
      title: StringManager.landingPageProject,
      date: StringManager.transactionDateAndTime,
      amount: r"$2,000",
      isWithdrawal: false,
    ),
    TransactionModel(
      title: StringManager.juniMobileAppProject,
      date: StringManager.transactionDateAndTime,
      amount: r"$20,129",
      isWithdrawal: false,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
    // return ListView.builder(
    //   // shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(transactionModel: items[index]);
    //   },
    // );
  }
}
