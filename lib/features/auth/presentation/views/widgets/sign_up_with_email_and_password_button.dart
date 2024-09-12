import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';

class SignUpWithEmailAndPasswordButton extends StatelessWidget {
  const SignUpWithEmailAndPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            onPressed: () {
              context.setLocale(const Locale('en'));
            },
            child: Text(
              AppLocalizationKeys.auth.signup.tr(),
              style:
                  Styles.textStyleBold15(context).copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
