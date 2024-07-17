import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';

class OptionsWidget extends StatefulWidget {
  const OptionsWidget({super.key, required this.options, this.color});
  final List<String> options;
  final Color? color;
  @override
  OptionsWidgetState createState() => OptionsWidgetState();
}

class OptionsWidgetState extends State<OptionsWidget> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.options.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedOption,
      // 90 degree to radian ==> 1.571
      // put - to rotate in the opposite direction of clockwise
      icon: Row(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 18), // Add space between text and arrow
          Transform.rotate(
            angle: -1.571,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: ColorManager.mainColor,
            ),
          ),
        ],
      ),
      items: widget.options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: widget.color == null
                ? Styles.styleMedium16(context)
                : Styles.styleRegular16(context).copyWith(color: ColorManager.greyColor),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue;
        });
      },
      underline: const SizedBox.shrink(), // Remove the underline
    );
  }
}
