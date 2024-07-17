import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/options_widget.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 56.0,
        decoration: ShapeDecoration(
          color: ColorManager.backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 20, top: 6),
          child: OptionsWidget(
            options: StringManager.itemMountOptions,
            color: ColorManager.greyColor,
          ),
        ));
  }
}
