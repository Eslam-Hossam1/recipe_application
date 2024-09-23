import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/styles.dart';

class SignUpPasswordStandard extends StatelessWidget {
  const SignUpPasswordStandard({
    super.key,
    required this.isValid,
    required this.standardText,
  });
  final bool isValid;
  final String standardText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
            isValid ? Assets.imagesGreenDoneIcon : Assets.imagesGrayDoneIcon),
        SizedBox(
          width: 8.w,
        ),
        Text(
          standardText,
          style: Styles.textStyleMedium15(context).copyWith(
            color: isValid
                ? AppColors.getMainTextColor(context)
                : AppColors.getSecondaryTextColor(context),
          ),
        ),
      ],
    );
  }
}
