import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/functions/text_form_field_validator.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/form_styles.dart';
import 'package:recipe_app/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.onSaved,
    this.verticalPadding,
  });
  final String hint;
  final void Function(String?)? onSaved;
  final double? verticalPadding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: customTextFormFieldValidator,
      cursorColor: AppColors.getPrimaryColor(context),
      style: Styles.textStyleSemiBold15(context).copyWith(
        color: AppColors.getMainTextColor(context),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalPadding?.h.clamp(18, double.infinity) ??
              18.h.clamp(18, double.infinity),
        ),
        hintText: hint,
        hintStyle: Styles.textStyleMedium15(context).copyWith(
          color: AppColors.getSecondaryTextColor(context),
        ),
        prefixIconConstraints:
            const BoxConstraints(minHeight: 24, minWidth: 58),
        prefixIcon: Container(
          margin: const EdgeInsetsDirectional.only(start: 24, end: 10),
          width: 24,
          height: 24,
          child: SvgPicture.asset(
            Assets.imagesEmailIcon,
          ),
        ),
        border: FormStyles.buildBorder(context),
        enabledBorder: FormStyles.buildBorder(context),
        focusedBorder: FormStyles.buildBorder(context).copyWith(
          borderSide: BorderSide(
            width: 2,
            color: AppColors.getPrimaryColor(context),
          ),
        ),
      ),
    );
  }
}
