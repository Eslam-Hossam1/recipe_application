import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/clickable_text.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/sign_up_form.dart';

class SignUpViewBodyMobileLayout extends StatelessWidget {
  const SignUpViewBodyMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.kMobileHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height *
                  (107 / Constants.kDesignHeight),
            ),
            Text(
              textAlign: TextAlign.center,
              AppLocalizationKeys.auth.signUpViewWelcome.tr(),
              style: Styles.textStyleBold22(context).copyWith(
                color: AppColors.getMainTextColor(context),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              textAlign: TextAlign.center,
              AppLocalizationKeys.auth.enterAccount.tr(),
              style: Styles.textStyleMedium15(context).copyWith(
                color: AppColors.getSecondaryTextColor(context),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            const SignUpForm(),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizationKeys.auth.signUpViewAlreadyHaveAnAccount.tr(),
                  style: Styles.textStyleSemiBold15(context).copyWith(
                    color: AppColors.getMainTextColor(context),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ClickableText(
                  onTap: () {
                    context.go(AppRouter.kLogInView);
                  },
                  text: AppLocalizationKeys.auth.logIn.tr(),
                  style: Styles.textStyleBold15(context).copyWith(
                    color: AppColors.getPrimaryColor(context),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41.h,
            ),
          ],
        ),
      ),
    );
  }
}
