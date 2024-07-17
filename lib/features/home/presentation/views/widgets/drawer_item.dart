// import 'package:flutter/material.dart';
// import 'package:responsive_dash_board/features/home/data/models/drawer_item_model.dart';
// import 'package:responsive_dash_board/features/home/presentation/views/widgets/active_and_inactive_item.dart';

// class DrawerItem extends StatelessWidget {
//   const DrawerItem({
//     super.key,
//     required this.drawerItemModel,
//     required this.isActive,
//   });
//   final DrawerItemModel drawerItemModel;
//   final bool isActive;
//   @override
//   Widget build(BuildContext context) {
//     return isActive
//         ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
//         : InActiveDrawerItem(drawerItemModel: drawerItemModel);
//   }
// }

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/home/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 800),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: isActive
          ? ActiveDrawerItem(
              key: const ValueKey<int>(1),
              drawerItemModel: drawerItemModel,
            )
          : InActiveDrawerItem(
              key: const ValueKey<int>(2),
              drawerItemModel: drawerItemModel,
            ),
    );
  }
}
