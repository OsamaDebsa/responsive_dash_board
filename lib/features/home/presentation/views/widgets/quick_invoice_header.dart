import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_circle_avatar.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          StringManager.quickInvoice,
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        const CustomCircleAvatar(
          icon: Icons.add,
          childColor: ColorManager.secondaryColor,
        )
      ],
    );
  }
}
