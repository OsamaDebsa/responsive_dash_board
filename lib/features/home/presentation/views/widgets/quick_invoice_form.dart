import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/title_dropdown_field.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitelTextField(
                    hintText: StringManager.typeCustomerName,
                    title: StringManager.customerName)),
            SizedBox(width: 16),
            Expanded(
                child: TitelTextField(
                    hintText: StringManager.typeCustomerEmail,
                    title: StringManager.customerEmail))
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TitelTextField(
                    hintText: StringManager.typeCustomerName,
                    title: StringManager.itemName)),
            SizedBox(width: 16),
            Expanded(child: TitleDropdownField(title: StringManager.itemAmount))
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: StringManager.addMoreDetails,
              baclgroundColor: Colors.transparent,
              textColor: ColorManager.secondaryColor,
            )),
            SizedBox(width: 24),
            Expanded(child: CustomButton(title: StringManager.sendMoney)),
          ],
        )
      ],
    );
  }
}
