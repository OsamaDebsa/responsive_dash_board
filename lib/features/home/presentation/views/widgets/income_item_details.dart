import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
import 'package:responsive_dash_board/features/home/data/models/income_item_detils_model.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.incomItemDetalisModel});
  final IncomItemDetalisModel incomItemDetalisModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.circle,
        color: incomItemDetalisModel.color,
      ),
      title: Text(
        incomItemDetalisModel.title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        incomItemDetalisModel.value,
        style: Styles.styleMedium16(context),
      ),
    );
  }
}
