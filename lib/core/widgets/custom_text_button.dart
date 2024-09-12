import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, this.backgroundColor, required this.child, this.onPressed});
  final Color? backgroundColor;
  final Widget child;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor:
                  backgroundColor ?? AppColors.getPrimaryColor(context)),
          child: child),
    );
  }
}
