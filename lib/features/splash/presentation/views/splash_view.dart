import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.getPrimaryColor(context),
        body: const SplashViewBody(),
      ),
    );
  }
}
