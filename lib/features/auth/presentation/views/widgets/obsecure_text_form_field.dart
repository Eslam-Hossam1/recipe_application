import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/core/functions/text_form_field_validator.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/form_styles.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/closed_eye_icon.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/opened_eye_svg.dart';

class ObsecureTextFormField extends StatefulWidget {
  const ObsecureTextFormField({
    super.key,
    required this.hint,
    this.onSaved,
  });
  final String hint;
  final void Function(String?)? onSaved;

  @override
  State<ObsecureTextFormField> createState() => _ObsecureTextFormFieldState();
}

class _ObsecureTextFormFieldState extends State<ObsecureTextFormField> {
  bool isObscure = true;

  void toggleObsecure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: widget.onSaved,
      validator: customTextFormFieldValidator,
      obscureText: isObscure,
      cursorColor: AppColors.getPrimaryColor(context),
      style: Styles.textStyleSemiBold15(context).copyWith(
        color: AppColors.getMainTextColor(context),
      ),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: Styles.textStyleMedium15(context).copyWith(
          color: AppColors.getSecondaryTextColor(context),
        ),
        suffixIconConstraints:
            const BoxConstraints(minHeight: 24, minWidth: 48),
        prefixIconConstraints:
            const BoxConstraints(minHeight: 24, minWidth: 58),
        prefixIcon: Container(
          margin: const EdgeInsetsDirectional.only(start: 24, end: 10),
          width: 24,
          height: 24,
          child: SvgPicture.asset(
            Assets.imagesLock,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 24.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(48),
            onTap: () {
              toggleObsecure();
            },
            child: isObscure == true
                ? const OpenedEyeSvg()
                : const ClosedEyeIcon(),
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
