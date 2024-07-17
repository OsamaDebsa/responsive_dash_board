import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    this.image,
    this.backgroundColor,
    this.childColor,
    this.icon,
  });

  final Color? childColor;
  final String? image;
  final Color? backgroundColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CircleAvatar(
        radius: 30,
        backgroundColor: backgroundColor ?? ColorManager.backGroundColor,
        child: Center(
          child: icon != null
              ? Icon(icon, color: childColor)
              : image != null
                  ? SvgPicture.asset(
                      image!,
                      color: childColor,
                    )
                  : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
