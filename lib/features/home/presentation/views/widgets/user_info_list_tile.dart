import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/data/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfo});
  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.backGroundColor,
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfo.imagePath),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              userInfo.title,
              style: Styles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              userInfo.subtitle,
              style: Styles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
