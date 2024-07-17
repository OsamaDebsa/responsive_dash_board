import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/my_card_and_transaction_history_and_income_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        // spaces between widgets it better to be consistent not responsive -_-
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      )),
                  SizedBox(width: 24),
                  Expanded(
                    flex: 2,
                    child: MyCardAndTransactionHistoryAndIncomeSection(),
                  ),
                ],
              ),
            ),
          ]),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
