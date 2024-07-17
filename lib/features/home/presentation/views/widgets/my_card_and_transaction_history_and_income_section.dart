import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/income_section.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/my_card_and_transaction_history_section.dart';

class MyCardAndTransactionHistoryAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionHistoryAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        MyCardAndTransactionHistorySection(),
        SizedBox(height: 24),
        Expanded(child: IncomeSection()),
        SizedBox(height: 10),
      ],
    );
  }
}
