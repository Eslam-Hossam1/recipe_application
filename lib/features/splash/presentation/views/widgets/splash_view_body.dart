import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_app/core/utils/app_router.dart';
import 'package:recipe_app/core/utils/assets.dart';
import 'package:recipe_app/core/utils/constants.dart';
import 'package:recipe_app/core/utils/shared_prefernce_helper.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/splash/presentation/view_model/splash_view_model.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    String toGoView = SplashViewModel.instance.determineToGoView();
    navigationAfterDuaration(toGoView);
  }

  navigationAfterDuaration(String toGoView) {
    return Future.delayed(const Duration(milliseconds: 4200)).then(
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
        SizedBox(
          height: 200,
          child: LottieBuilder.asset(
            Assets.lottieAnimation,
            repeat: false,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Text(
            "Chefio",
            style: Styles.textStyleExtraBold40(context)
                .copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
