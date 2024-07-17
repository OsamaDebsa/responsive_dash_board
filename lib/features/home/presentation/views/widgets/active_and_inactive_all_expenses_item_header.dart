import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_circle_avatar.dart';

class ActiveAllExpensesItemHeader extends StatelessWidget {
  const ActiveAllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleAvatar(
          image: image,
          backgroundColor: ColorManager.whiteColor.withOpacity(0.11),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: ColorManager.whiteColor,
        )
      ],
    );
  }
}

class InActiveAllExpensesItemHeader extends StatelessWidget {
  const InActiveAllExpensesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircleAvatar(
          image: image,
          childColor: ColorManager.secondaryColor,
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: ColorManager.mainColor,
        )
      ],
    );
  }
}
