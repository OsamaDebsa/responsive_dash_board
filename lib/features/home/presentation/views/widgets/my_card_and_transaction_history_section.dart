import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/transaction_history_section.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 48,
            color: ColorManager.borderColor,
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
