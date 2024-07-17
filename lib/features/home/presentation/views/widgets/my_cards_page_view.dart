import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/features/home/presentation/views/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
  final PageController pageController;
  // List<double> childrenHeight = [];
  // int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: childrenHeight[currentPage],
    //   child
    //   : PageView.builder(
    //     itemBuilder: (context, index) {
    //       return const MyCard();
    //     },
    //     itemCount: 5,
    //     scrollDirection: Axis.horizontal,
    //   ),
    // );
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: MyCard(),
        ),
      ),
    );
  }
}
