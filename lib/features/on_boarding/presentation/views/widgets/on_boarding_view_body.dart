import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/widgets/on_boarding_image.dart';
import 'package:recipe_app/generated/l10n.dart';
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
              const SizedBox(
                height: 48,
              ),
              Text(
                S.of(context).onboarding_title,
                style: Styles.textStyleBold22(context).copyWith(
                  color: AppColors.getMainTextColor(context),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                textAlign: TextAlign.center,
                S.of(context).onboarding_body,
                style: Styles.textStyleMedium17(context).copyWith(
                  color: AppColors.getSecondaryTextColor(context),
                ),
              ),
              const Expanded(
                  child: SizedBox(
                height: 32,
              )),
              CustomTextButton(
                onPressed: () async {
                  await setBoolThenNavigate(context);
                },
                text: S.of(context).onboarding_buttonText,
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> setBoolThenNavigate(BuildContext context) async {
    await SharedPreferencesHelper.instance
        .setData(key: Constants.kIsOnBoardingOpenedBeforeKey, value: true);
    log(SharedPreferencesHelper.instance
        .getBool(Constants.kIsOnBoardingOpenedBeforeKey)
        .toString());
    // Ensure navigation happens safely
    if (context.mounted) {
      context.push(AppRouter.kHomeView);
    }
  }
}
