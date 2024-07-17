import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_dropdown.dart';

class TitleDropdownField extends StatelessWidget {
  const TitleDropdownField({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.styleMedium16(context)),
        const SizedBox(height: 12),
        const CustomDropdown()
      ],
    );
  }
}
