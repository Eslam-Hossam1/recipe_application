import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  context.setLocale(Locale('en'));
                },
                icon: Icon(Icons.search))
          ],
          title: Text(AppLocalizationKeys.authLoginWelcome.tr()),
        ),
        body: OnBoardingViewBody(),
      ),
    );
  }
}
