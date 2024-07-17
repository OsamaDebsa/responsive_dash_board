import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: StringManager.dashboard,
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      title: StringManager.myTransaction,
      image: Assets.imagesMyTransaction,
    ),
    DrawerItemModel(
      title: StringManager.statistics,
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: StringManager.walletAccount,
      image: Assets.imagesWalletAccount,
    ),
    DrawerItemModel(
      title: StringManager.myInvestments,
      image: Assets.imagesMyInvestments,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
     
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
