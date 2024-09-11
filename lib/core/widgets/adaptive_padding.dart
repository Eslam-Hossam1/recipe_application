import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/size_config.dart';

class AdaptivePadding extends StatelessWidget {
  const AdaptivePadding({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getResponsivePadding(baseHorizontalPadding: 24, context),
      ),
    );
  }

  static double getResponsivePadding(
    context, {
    required double baseHorizontalPadding,
  }) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tabletBreakPoint) {
      return baseHorizontalPadding;
    } else {
      return baseHorizontalPadding;
    }
  }
}
