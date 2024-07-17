import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: ColorManager.backGroundColor,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: ColorManager.backGroundColor,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
