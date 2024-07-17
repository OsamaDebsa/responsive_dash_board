import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/options_widget.dart';

class CustomFrequencyOptions extends StatelessWidget {
  const CustomFrequencyOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: ShapeDecoration(
        color: ColorManager.whiteColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: ColorManager.borderColor),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const OptionsWidget(
        options: StringManager.frequencyOptions,
      ),
    );
  }
}
