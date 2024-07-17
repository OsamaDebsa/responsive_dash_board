import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/features/home/data/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesItemListview extends StatefulWidget {
  const AllExpensesItemListview({super.key});

  @override
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  final List<AllExpensesItemModel> items = <AllExpensesItemModel>[
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: StringManager.balance,
        date: StringManager.itemDate,
        price: 20.129),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: StringManager.income,
        date: StringManager.itemDate,
        price: 20.129),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: StringManager.expenses,
        date: StringManager.itemDate,
        price: 20.129),
  ];

  bool isActivated = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    //   return ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return AllExpensesItem(allExpensesItemModel: items[index]);
    //     },
    //   );
    // }
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpensesItem(
                allExpensesItemModel: items[0],
                isActivated: selectedIndex == 0 ? true : false),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpensesItem(
                allExpensesItemModel: items[1],
                isActivated: selectedIndex == 1 ? true : false),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpensesItem(
                allExpensesItemModel: items[2],
                isActivated: selectedIndex == 2 ? true : false),
          ),
        ),
      ],
    );
    // return Row(
    //     // children: items
    //     //     .map((e) => Expanded(child: AllExpensesItem(allExpensesItemModel: e)))
    //     //     .toList());
    //     // -----------------------------------------------------------------------------------------
    //     // asMap() differ from map() as it give me entries of the list with index and value
    //     children: items.asMap().entries.map((e) {
    //   final index = e.key;
    //   final item = e.value;
    //   return Expanded(
    //     child: GestureDetector(
    //       onTap: () {
    //         setState(() {
    //           selectedIndex = index;
    //         });
    //       },
    //       child: Padding(
    //         padding: index == 1 ? const EdgeInsets.all(12.0) : EdgeInsets.zero,
    //         child: AllExpensesItem(
    //             allExpensesItemModel: item,
    //             isActivated: selectedIndex == index ? true : false),
    //       ),
    //     ),
    //   );
    // }).toList());
  }
}
