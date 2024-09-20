import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/service_locator.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/splash/presentation/view_model/splash_view_model.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late double _opacity;

  @override
  void initState() {
    super.initState();
    startFadeInAnimation();
    String toGoView = getIt<SplashViewModel>().determineToGoView();
    navigationAfterDuration(toGoView);
  }

  void startFadeInAnimation() {
    _opacity = 0;
    Future.delayed(Constants.kAnimationDelayDuration, () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  navigationAfterDuration(String toGoView) {
    return Future.delayed(Constants.kSplashNavigationDelayDuration).then(
      (value) {
        if (mounted) {
          context.push(toGoView);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Center(
            child: AnimatedOpacity(
              opacity: _opacity,
              duration: Constants.kFadeInDuration,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
                child: Text(
                  "Chefio",
                  style: Styles.textStyleExtraBold40(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
