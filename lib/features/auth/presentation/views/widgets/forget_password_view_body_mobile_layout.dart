import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_form.dart';

class ForgetPasswordViewBodyMobileLayout extends StatelessWidget {
  const ForgetPasswordViewBodyMobileLayout({super.key});

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
              AppLocalizationKeys.auth.forgetPasswordViewPasswordRecovery.tr(),
              style: Styles.textStyleBold22(context).copyWith(
                color: AppColors.getMainTextColor(context),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              textAlign: TextAlign.center,
              AppLocalizationKeys
                  .auth.forgetPasswordViewEnterEmailRecoverPassword
                  .tr(),
              style: Styles.textStyleMedium15(context).copyWith(
                color: AppColors.getSecondaryTextColor(context),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            const ForgetPasswordForm(),
            SizedBox(
              height: 41.h,
            )
          ],
        ),
      ),
    );
  }
}
