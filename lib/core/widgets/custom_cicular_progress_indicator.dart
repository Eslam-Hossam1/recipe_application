import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: AppColors.getPrimaryColor(context),
    );
  }
}
