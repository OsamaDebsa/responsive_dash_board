import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/data/models/income_item_detils_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/income_item_details.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  static const List<IncomItemDetalisModel> incomeDetails = [
    IncomItemDetalisModel(
      color: ColorManager.lookLikeSecondaryColor,
      title: StringManager.designService,
      value: '40%',
    ),
    IncomItemDetalisModel(
      color: ColorManager.secondaryColor,
      title: StringManager.designProduct,
      value: '25%',
    ),
    IncomItemDetalisModel(
      color: ColorManager.mainColor,
      title: StringManager.productRoyalti,
      value: '20%',
    ),
    IncomItemDetalisModel(
      color: ColorManager.lookLikegreyColor,
      title: StringManager.other,
      value: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // log(MediaQuery.sizeOf(context).width.toString());

    return Column(
      children: incomeDetails
          .map((e) => IncomeItemDetails(incomItemDetalisModel: e))
          .toList(),
    );
    // return ListView.builder(
    //   // shrinkWrap: true,
    //   scrollDirection: Axis.vertical,
    //   itemCount: incomeDetails.length,
    //   itemBuilder: (context, index) {
    //     return IncomeItemDetails(incomItemDetalisModel: incomeDetails[index]);
    //   },
    // );
  }
}
