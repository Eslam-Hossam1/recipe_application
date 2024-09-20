import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/service_locator.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/features/splash/presentation/views/splash_view.dart';

class SplashViewModel {
  String determineToGoView() {
    bool? isOnBoardingCompleted = getIt<SharedPreferencesHelper>()
        .getBool(Constants.kIsOnBoardingCompletedKey);

    return isOnBoardingCompleted == null
        ? AppRouter.kOnBoardingView
        : AppRouter.kHomeView;
  }
}
