import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      fillColor: ColorManager.backGroundColor,
      focusColor: ColorManager.backGroundColor,
      border: buildBorder(),
      filled: true,
      labelText: hintText,
      enabledBorder: buildBorder(),
      labelStyle: Styles.styleRegular16(context).copyWith(color: ColorManager.greyColor),
    ));
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: ColorManager.backGroundColor,
    ),
  );
}
