import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/income_section.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const AllExpensesAndQuickInvoiceSection(),
              const SizedBox(height: 24),
              const MyCardAndTransactionHistorySection(),
              const SizedBox(height: 24),
              const IncomeSection(),
            ],
          ),
        ),
      ],
    );
  }
}
