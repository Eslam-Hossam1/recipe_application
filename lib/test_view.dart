import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.setLocale(Locale('ar'));
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                context.setLocale(Locale('en'));
              },
              icon: Icon(Icons.home))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(AppLocalizationKeys.onBoarding.title.tr()),
            Text(AppLocalizationKeys.onBoarding.body.tr()),
            Text(AppLocalizationKeys.onBoarding.buttonText.tr()),
            Text(AppLocalizationKeys.auth.emailTextFeildHint.tr()),
            Text(AppLocalizationKeys.auth.confirm.tr()),
            Text(AppLocalizationKeys.auth.enterAccount.tr()),
            Text(AppLocalizationKeys.auth.logIn.tr()),
            Text(AppLocalizationKeys.auth.passwordTextFieldHint.tr()),
            Text(AppLocalizationKeys.auth.forgetPasswordQuestion.tr()),
            Text(AppLocalizationKeys.auth.signup.tr()),
            Text(AppLocalizationKeys.auth.logInViewDontHaveAnAccount.tr()),
            Text(AppLocalizationKeys.auth.logInViewWelcomeBack.tr()),
            Text(AppLocalizationKeys.auth.signUpViewWelcome.tr()),
            Text(AppLocalizationKeys.auth.signUpViewAlreadyHaveAnAccount.tr()),
            Text(AppLocalizationKeys
                .auth.forgetPasswordViewEnterEmailRecoverPassword
                .tr()),
            Text(AppLocalizationKeys.auth.forgetPasswordViewPasswordRecovery
                .tr()),
          ],
        ),
      ),
    );
  }
}
