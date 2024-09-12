import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/colors.dart';

class ClosedEyeIcon extends StatelessWidget {
  const ClosedEyeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.visibility_off,
      color: AppColors.getMainTextColor(context),
      size: 24,
    );
  }
}
