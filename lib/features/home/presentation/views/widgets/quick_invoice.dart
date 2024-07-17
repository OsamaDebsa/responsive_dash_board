import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
        ],
      ),
    );
  }
}
