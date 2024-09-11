import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/features/splash/presentation/views/splash_view.dart';

class SplashViewModel {
  static final SharedPreferencesHelper _sharedPreferencesHelper =
      SharedPreferencesHelper.instance;
  //singletone
  static final SplashViewModel instance = SplashViewModel._();
  SplashViewModel._();

  String determineToGoView() {
    bool? isOnBoardingCompleted = _sharedPreferencesHelper
        .getBool(Constants.kIsOnBoardingOpenedBeforeKey);

    return isOnBoardingCompleted == null
        ? AppRouter.kOnBoardingView
        : AppRouter.kHomeView;
  }
}
