import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/obsecure_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 107.h,
          ),
          Text(
            AppLocalizationKeys.auth.logInViewWelcomeBack.tr(),
            style: Styles.textStyleBold22(context).copyWith(
              color: AppColors.getMainTextColor(context),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            AppLocalizationKeys.auth.enterAccount.tr(),
            style: Styles.textStyleMedium15(context).copyWith(
              color: AppColors.getSecondaryTextColor(context),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          CustomTextFormField(
              hint: AppLocalizationKeys.auth.emailTextFeildHint.tr()),
          SizedBox(
            height: 16.h,
          ),
          ObsecureTextFormField(
            hint: AppLocalizationKeys.auth.passwordTextFieldHint.tr(),
          ),
          SizedBox(
            height: 24.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppLocalizationKeys.auth.forgetPasswordQuestion.tr(),
              style: Styles.textStyleSemiBold15(context).copyWith(
                color: AppColors.getMainTextColor(context),
              ),
            ),
          ),
          SizedBox(
            height: 72.h,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextButton(
                  onPressed: () {
                    context.setLocale(Locale('en'));
                  },
                  child: Text(
                    AppLocalizationKeys.auth.logIn.tr(),
                    style: Styles.textStyleBold15(context)
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            AppLocalizationKeys.auth.orContinueWith.tr(),
            style: Styles.textStyleMedium15(context).copyWith(
              color: AppColors.getSecondaryTextColor(context),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextButton(
                  onPressed: () {
                    context.setLocale(Locale('ar'));
                  },
                  backgroundColor: const Color(0xffFF5842),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Assets.imagesGoogleIcon),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "Google",
                        style: Styles.textStyleBold15(context)
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizationKeys.auth.logInViewDontHaveAnAccount.tr(),
                style: Styles.textStyleSemiBold15(context).copyWith(
                  color: AppColors.getMainTextColor(context),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                AppLocalizationKeys.auth.signup.tr(),
                style: Styles.textStyleBold15(context).copyWith(
                  color: AppColors.getPrimaryColor(context),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 41.h,
          )
        ],
      ),
    );
  }
}
