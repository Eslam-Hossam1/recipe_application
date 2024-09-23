import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/app_localization_keys.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/core/widgets/custom_text_button.dart';

class LoginWithEmailAndPasswordButton extends StatelessWidget {
  const LoginWithEmailAndPasswordButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            onPressed: onPressed,
            child: Text(
              AppLocalizationKeys.auth.logIn.tr(),
              style:
                  Styles.textStyleBold15(context).copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
