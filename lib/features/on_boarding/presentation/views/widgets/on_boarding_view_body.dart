import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/widgets/on_boarding_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const OnBourdingImage(),
              SizedBox(
                height: 48.h,
              ),
              Text(
                AppLocalizationKeys.onBoarding.title.tr(),
                style: Styles.textStyleBold22(context).copyWith(
                  color: AppColors.getMainTextColor(context),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                textAlign: TextAlign.center,
                AppLocalizationKeys.onBoarding.body.tr(),
                style: Styles.textStyleMedium17(context).copyWith(
                  color: AppColors.getSecondaryTextColor(context),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 32.h,
              )),
              Row(
                children: [
                  Expanded(
                    child: CustomTextButton(
                      onPressed: () async {
                        await setBoolThenNavigate(context);
                      },
                      child:
                          Text(AppLocalizationKeys.onBoarding.buttonText.tr(),
                              style: Styles.textStyleBold15(context).copyWith(
                                color: Colors.white,
                              )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Future<void> setBoolThenNavigate(BuildContext context) async {
    await SharedPreferencesHelper.instance
        .setData(key: Constants.kIsOnBoardingOpenedBeforeKey, value: true);

    // Ensure navigation happens safely
    if (context.mounted) {
      context.push(AppRouter.kHomeView);
    }
  }
}
