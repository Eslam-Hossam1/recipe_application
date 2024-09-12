import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle textStyleMedium12(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 12),
    );
  }

  static TextStyle textStyleBold17(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 17),
    );
  }

  static TextStyle textStyleMedium15(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 15),
    );
  }

  static TextStyle textStyleBold15(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 15),
    );
  }

  static TextStyle textStyleBold22(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 22),
    );
  }

  static TextStyle textStyleExtraBold40(context) {
    return TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: _getResponsiveText(context, baseFontSize: 40),
    );
  }

  static TextStyle textStyleSemiBold15(context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: _getResponsiveText(context, baseFontSize: 15),
    );
  }

  static TextStyle textStyleMedium34(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 34),
    );
  }

  static TextStyle textStyleMedium17(context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: _getResponsiveText(context, baseFontSize: 17),
    );
  }

  static TextStyle textStyleBold12(context) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: _getResponsiveText(context, baseFontSize: 12),
    );
  }

  static TextStyle textStyleSemiBold34(context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: _getResponsiveText(context, baseFontSize: 34),
    );
  }

  static double _getResponsiveText(context, {required double baseFontSize}) {
    double scaleFactor = _getScaleFactor(context);
    double responsizeTextFontSize = scaleFactor * baseFontSize;
    double lowerLimit = baseFontSize * .75;
    double upperLimit = baseFontSize * 1.25;
    // Log each variable
    // log('Scale Factor: $scaleFactor');
    // log('Responsive Text Font Size: $responsizeTextFontSize');
    // log('Lower Limit: $lowerLimit');
    // log('Upper Limit: $upperLimit');
    // log('return ' +
    //     responsizeTextFontSize.clamp(lowerLimit, upperLimit).toString());
    return responsizeTextFontSize.clamp(lowerLimit, upperLimit);
  }

  static double _getScaleFactor(context) {
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    double width = MediaQuery.sizeOf(context).width;
    const double designMediumWidth = 375;
    return width / designMediumWidth;
    // if (width < SizeConfig.tabletBreakPoint) {
    //   return width / 600;
    // } else if (width < SizeConfig.desktopBreakPoint) {
    //   return width / 1100;
    // } else {
    //   return width / 1550;
    // }
  }
}
