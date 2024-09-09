import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, this.backgroundColor, required this.text, this.onPressed});
  final Color? backgroundColor;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56,
        width: MediaQuery.sizeOf(context).width * .872,
        child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
                backgroundColor:
                    backgroundColor ?? AppColors.getPrimaryColor(context)),
            child: Text(text,
                style: Styles.textStyleBold15(context).copyWith(
                  color: Colors.white,
                ))));
  }
}
