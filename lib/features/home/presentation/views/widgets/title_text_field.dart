import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_text_field.dart';

class TitelTextField extends StatelessWidget {
  const TitelTextField(
      {super.key, required this.hintText, required this.title});
  final String hintText;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.styleMedium16(context)),
        const SizedBox(height: 12),
        CustomTextField(hintText: hintText)
      ],
    );
  }
}
