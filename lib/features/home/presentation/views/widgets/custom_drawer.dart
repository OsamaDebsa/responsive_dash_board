import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/features/home/data/models/user_info_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/drawer_Item_list_view.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final userInfo = UserInfo(
      imagePath: Assets.imagesAvatar,
      title: StringManager.testTitle,
      subtitle: StringManager.testSubTitle,
    );

    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: ColorManager.whiteColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfo: userInfo,
            ),
          ),
          // spaces between widgets it better to be consistent not responsive -_-
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: StringManager.settingSystem,
                    image: Assets.imagesSetting,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: StringManager.logoutAccount,
                      image: Assets.imagesLogout,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
