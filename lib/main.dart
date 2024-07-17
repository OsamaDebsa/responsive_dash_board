import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/scroll_behavior.dart';
import 'package:responsive_dash_board/features/home/presentation/views/dash_board_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => const ResponsiveDashBoard()));
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollerBehavior(),
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
