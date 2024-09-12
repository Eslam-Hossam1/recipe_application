import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';

class PasswordRecoveryButton extends StatelessWidget {
  const PasswordRecoveryButton({
    super.key,
  });

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
              AppLocalizationKeys.auth.confirm.tr(),
              style:
                  Styles.textStyleBold15(context).copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
