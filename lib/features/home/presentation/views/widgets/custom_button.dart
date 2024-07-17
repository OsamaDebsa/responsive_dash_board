import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.baclgroundColor, this.textColor});
  final String title;
  final Color? baclgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor: baclgroundColor ?? ColorManager.secondaryColor),
        onPressed: () {},
        child: Text(title,
            textAlign: TextAlign.center,
            style: Styles.styleSemiBold18(context)
                .copyWith(color: textColor ?? ColorManager.whiteColor)),
      ),
    );
  }
}
