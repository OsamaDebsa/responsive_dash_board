import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_dot_indicator.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(
            isActive: index == currentPage,
          ),
        ),
      ),
    );
  }
}
