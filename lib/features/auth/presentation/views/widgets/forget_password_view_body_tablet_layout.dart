import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/functions/get_auth__tablet_padding.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/auth/presentation/views/widgets/forget_password_form.dart';

class ForgetPasswordViewBodyTabletLayout extends StatelessWidget {
  const ForgetPasswordViewBodyTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getAuthTabletPadding(context)),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              Text(
                textAlign: TextAlign.center,
                AppLocalizationKeys.auth.forgetPasswordViewPasswordRecovery
                    .tr(),
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
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
