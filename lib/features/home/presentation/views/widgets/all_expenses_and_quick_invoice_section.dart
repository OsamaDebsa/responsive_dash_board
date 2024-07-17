// import 'package:flutter/material.dart';
// import 'package:responsive_dash_board/features/home/presentation/views/widgets/all_expenses.dart';
// import 'package:responsive_dash_board/features/home/presentation/views/widgets/quick_invoice.dart';

// class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
//   const AllExpensesAndQuickInvoiceSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: SizedBox(height: 40),
//         ),
//         SliverToBoxAdapter(
//           child: AllExpenses(),
//         ),
//         SliverToBoxAdapter(
//           child: SizedBox(height: 24),
//         ),
//         SliverToBoxAdapter(
//           child: QuickInvoice(),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
