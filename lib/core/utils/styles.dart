import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/color_manager.dart';
import 'package:responsive_dash_board/core/utils/font_manager.dart';
import 'package:responsive_dash_board/core/utils/size_config.dart';

abstract class Styles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: ColorManager.mainColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s16),
      fontWeight: FontWeightManager.regular,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: ColorManager.mainColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s16),
      fontWeight: FontWeightManager.medium,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: ColorManager.mainColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s16),
      fontWeight: FontWeightManager.semiBold,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: ColorManager.mainColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s20),
      fontWeight: FontWeightManager.semiBold,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: ColorManager.greyColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s12),
      fontWeight: FontWeightManager.regular,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: ColorManager.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s24),
      fontWeight: FontWeightManager.semiBold,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: ColorManager.greyColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s14),
      fontWeight: FontWeightManager.regular,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: ColorManager.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s18),
      fontWeight: FontWeightManager.semiBold,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: ColorManager.secondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s16),
      fontWeight: FontWeightManager.bold,
      fontFamily: FontType.kMontserrat,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      color: ColorManager.whiteColor,
      fontSize: getResponsiveFontSize(context, fontSize: FontSizeManager.s20),
      fontWeight: FontWeightManager.medium,
      fontFamily: FontType.kMontserrat,
    );
  }

  // Scale factor for responsive font size
  static double getResponsiveFontSize(context, {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(context) {
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // double width = physicalWidth / devicePixelRatio;
  
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tablet) {
      return width / 550;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }
}
