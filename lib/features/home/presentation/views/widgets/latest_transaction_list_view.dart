import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';
import 'package:responsive_dash_board/features/home/data/models/user_info_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static List<UserInfo> userInfoList = [
    UserInfo(
      imagePath: Assets.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfo(
      imagePath: Assets.imagesAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfo(
        imagePath: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfo(
        imagePath: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfo(
        imagePath: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: UserInfoListTile(userInfo: userInfoList[index]));
        },
        itemCount: userInfoList.length,
      ),
    );
    /*
     another way to write the above code but used when you have bounded length of list
     and this way not force you to write height
     */
    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //       children: userInfoList
    //           .map((e) => IntrinsicWidth(child: UserInfoListTile(userInfo: e)))
    //           .toList()),
    // );
  }
}
