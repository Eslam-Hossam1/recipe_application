import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/service_locator.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';

class OnboardingViewModel {
  Future<void> _setOnBoardingCompletedToTrue(BuildContext context) async {
    await getIt<SharedPreferencesHelper>()
        .setData(key: Constants.kIsOnBoardingCompletedKey, value: true);
  }

  Future<void> setOnBoardingCompletedToTrueThenNavigate(
      BuildContext context) async {
    await _setOnBoardingCompletedToTrue(context);
    if (context.mounted) {
      context.push(AppRouter.kForgetPasswordView);
    }
  }
}
