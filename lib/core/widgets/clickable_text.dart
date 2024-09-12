import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/styles.dart';

class ClickableText extends StatelessWidget {
  const ClickableText(
      {super.key, required this.text, this.style, this.color, this.onTap});
  final String text;
  final TextStyle? style;
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        AppLocalizationKeys.auth.forgetPasswordQuestion.tr(),
        style: Styles.textStyleSemiBold15(context).copyWith(
          color: AppColors.getMainTextColor(context),
        ),
      ),
    );
  }
}
