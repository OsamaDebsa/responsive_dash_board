import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/assets.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/string_manage.dart';
import 'package:responsive_dash_board/core/utils/styles.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart';   flutter_svg_provider: ^1.0.0

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 230,
      child: Container(
        decoration: ShapeDecoration(
          color: ColorManager.secondaryColor,
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCard),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(StringManager.nameCard,
                    style: Styles.styleRegular16(context)
                        .copyWith(color: ColorManager.whiteColor)),
                subtitle: Text(StringManager.syahBandi,
                    style: Styles.styleMedium20(context)),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Spacer(),
              Text(StringManager.cardPhone,
                  style: Styles.styleSemiBold24(context)
                      .copyWith(color: ColorManager.whiteColor)),
              Text(StringManager.cardNum,
                  style: Styles.styleRegular16(context)
                      .copyWith(color: ColorManager.whiteColor)),
            ],
          ),
        ),
      ),
    );
  }
}
